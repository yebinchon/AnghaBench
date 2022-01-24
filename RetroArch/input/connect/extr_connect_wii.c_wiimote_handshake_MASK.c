#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  classic; } ;
struct TYPE_4__ {TYPE_1__ cc; int /*<<< orphan*/  type; } ;
struct connect_wii_wiimote_t {int handshake_state; int /*<<< orphan*/  unid; TYPE_2__ exp; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EXP_HANDSHAKE_LEN ; 
 int /*<<< orphan*/  EXP_NONE ; 
#define  IDENT_CC 128 
 int /*<<< orphan*/  FUNC0 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIIMOTE_LED_1 ; 
 int /*<<< orphan*/  WIIMOTE_LED_2 ; 
 int /*<<< orphan*/  WIIMOTE_LED_3 ; 
 int /*<<< orphan*/  WIIMOTE_LED_4 ; 
 int /*<<< orphan*/  WIIMOTE_LED_NONE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_EXP ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE ; 
 int /*<<< orphan*/  WIIMOTE_STATE_HANDSHAKE_COMPLETE ; 
 int WM_CTRL_STATUS_BYTE1_ATTACHMENT ; 
 int /*<<< orphan*/  WM_EXP_MEM_CALIBR ; 
 int WM_EXP_MEM_ENABLE ; 
 int /*<<< orphan*/  WM_RPT_BTN ; 
 int /*<<< orphan*/  WM_RPT_BTN_EXP ; 
 int WM_RPT_CTRL_STATUS ; 
 int WM_RPT_READ ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct connect_wii_wiimote_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct connect_wii_wiimote_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct connect_wii_wiimote_t*,int,int*,int) ; 

__attribute__((used)) static int FUNC12(struct connect_wii_wiimote_t* wm,
      uint8_t event, uint8_t* data, uint16_t len)
{
   if (!wm)
      return 0;

   do
   {
      switch (wm->handshake_state)
      {
         case 0:
            /* no ha habido nunca handshake, debemos forzar un
             * mensaje de staus para ver que pasa. */

            FUNC1(wm, WIIMOTE_STATE_HANDSHAKE);
            FUNC9(wm, WIIMOTE_LED_NONE);

            /* Request the status of the Wiimote to
             * see if there is an expansion */
            FUNC10(wm);

            wm->handshake_state=1;
            return 0;
         case 1:
            {
               /* estamos haciendo handshake o bien se necesita iniciar un
                * nuevo handshake ya que se inserta(quita una expansion. */
               int attachment = 0;

               if(event != WM_RPT_CTRL_STATUS)
                  return 0;

               /* Is an attachment connected to
                * the expansion port? */
               if ((data[2] & WM_CTRL_STATUS_BYTE1_ATTACHMENT) ==
                     WM_CTRL_STATUS_BYTE1_ATTACHMENT)
                  attachment = 1;

#ifdef WIIMOTE_DBG
               printf("attachment %d %d\n",attachment,
                     WIIMOTE_IS_SET(wm, WIIMOTE_STATE_EXP));
#endif

               if (attachment && !FUNC2(wm, WIIMOTE_STATE_EXP))
               {
                  uint8_t buf = 0;

                  /* Expansion port */

                  FUNC1(wm, WIIMOTE_STATE_EXP);

                  /* Send the initialization code for the attachment */

                  if(FUNC2(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE))
                  {
                     /* Rehandshake. */

                     FUNC0(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);
                     /* forzamos un handshake por si venimos
                      * de un hanshake completo. */
                     FUNC1(wm, WIIMOTE_STATE_HANDSHAKE);
                  }

                  /*Old way. initialize the extension was by writing the
                   * single encryption byte 0x00 to 0x(4)A40040. */
#if 0
                  buf = 0x00;
                  wiimote_write_data(wm, WM_EXP_MEM_ENABLE, &buf, 1);
#endif

                  /* NEW WAY 0x55 to 0x(4)A400F0, then writing
                   * 0x00 to 0x(4)A400FB. (support clones) */
                  buf = 0x55;
                  FUNC11(wm, 0x04A400F0, &buf, 1);
                  FUNC4(100);
                  buf = 0x00;
                  FUNC11(wm, 0x04A400FB, &buf, 1);

                  /* check extension type! */
                  FUNC4(100);
                  FUNC8(wm, WM_EXP_MEM_CALIBR + 220, 4);
#if 0
                  wiimote_read_data(wm, WM_EXP_MEM_CALIBR, EXP_HANDSHAKE_LEN);
#endif

                  wm->handshake_state = 4;
                  return 0;
               }
               else if (!attachment && FUNC2(wm, WIIMOTE_STATE_EXP))
               {
                  /* Attachment removed */
                  FUNC0(wm, WIIMOTE_STATE_EXP);
                  wm->exp.type = EXP_NONE;

                  if(FUNC2(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE))
                  {
#ifdef WIIMOTE_DBG
                     printf("rehandshake\n");
#endif
                     FUNC0(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);
                     /* forzamos un handshake por si venimos
                      * de un hanshake completo. */
                     FUNC1(wm, WIIMOTE_STATE_HANDSHAKE);
                  }
               }

               if(!attachment &&  FUNC2(wm,WIIMOTE_STATE_HANDSHAKE))
               {
                  wm->handshake_state = 2;
                  continue;
               }

               return 0;
            }
         case 2:
            /* Find handshake no expansion. */
#ifdef WIIMOTE_DBG
            printf("Finalizado HANDSHAKE SIN EXPANSION\n");
#endif
            FUNC7(wm,WM_RPT_BTN);
            wm->handshake_state = 6;
            continue;
         case 3:
            /* Find handshake expansion. */
#ifdef WIIMOTE_DBG
            printf("Finalizado HANDSHAKE CON EXPANSION\n");
#endif
            FUNC7(wm,WM_RPT_BTN_EXP);
            wm->handshake_state = 6;
            continue;
         case 4:
            {
               uint32_t id;
               int32_t *ptr = (int32_t*)data;

               if (event != WM_RPT_READ)
                  return 0;

               id = FUNC5(*ptr);

               switch (id)
               {
                  case IDENT_CC:
                     FUNC4(100);
                     /* pedimos datos de calibracion del JOY! */
                     FUNC8(wm, WM_EXP_MEM_CALIBR, 16);
                     wm->handshake_state = 5;
                     break;
                  default:
                     wm->handshake_state = 2;
#if 0
                     WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP);
#endif
                     continue;
               }
            }
            return 0;
         case 5:
            if(event !=  WM_RPT_READ)
               return 0;

            FUNC6(wm, &wm->exp.cc.classic, data,len);
            wm->handshake_state = 3;
            continue;
         case 6:
            FUNC0(wm, WIIMOTE_STATE_HANDSHAKE);
            FUNC1(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);
            wm->handshake_state = 1;

            switch (wm->unid)
            {
               case 0:
                  FUNC9(wm, WIIMOTE_LED_1);
                  break;
               case 1:
                  FUNC9(wm, WIIMOTE_LED_2);
                  break;
               case 2:
                  FUNC9(wm, WIIMOTE_LED_3);
                  break;
               case 3:
                  FUNC9(wm, WIIMOTE_LED_4);
                  break;
            }
            return 1;
         default:
            break;
      }
   }while(1);
}