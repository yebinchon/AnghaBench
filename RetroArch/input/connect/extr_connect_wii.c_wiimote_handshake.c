
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int classic; } ;
struct TYPE_4__ {TYPE_1__ cc; int type; } ;
struct connect_wii_wiimote_t {int handshake_state; int unid; TYPE_2__ exp; } ;
typedef int int32_t ;


 int EXP_HANDSHAKE_LEN ;
 int EXP_NONE ;

 int WIIMOTE_DISABLE_STATE (struct connect_wii_wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct connect_wii_wiimote_t*,int ) ;
 int WIIMOTE_IS_SET (struct connect_wii_wiimote_t*,int ) ;
 int WIIMOTE_LED_1 ;
 int WIIMOTE_LED_2 ;
 int WIIMOTE_LED_3 ;
 int WIIMOTE_LED_4 ;
 int WIIMOTE_LED_NONE ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_HANDSHAKE ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 int WM_CTRL_STATUS_BYTE1_ATTACHMENT ;
 int WM_EXP_MEM_CALIBR ;
 int WM_EXP_MEM_ENABLE ;
 int WM_RPT_BTN ;
 int WM_RPT_BTN_EXP ;
 int WM_RPT_CTRL_STATUS ;
 int WM_RPT_READ ;
 int printf (char*,...) ;
 int retro_sleep (int) ;
 int swap_if_little32 (int ) ;
 int wiimote_classic_ctrl_handshake (struct connect_wii_wiimote_t*,int *,int*,int ) ;
 int wiimote_data_report (struct connect_wii_wiimote_t*,int ) ;
 int wiimote_read_data (struct connect_wii_wiimote_t*,int ,int) ;
 int wiimote_set_leds (struct connect_wii_wiimote_t*,int ) ;
 int wiimote_status (struct connect_wii_wiimote_t*) ;
 int wiimote_write_data (struct connect_wii_wiimote_t*,int,int*,int) ;

__attribute__((used)) static int wiimote_handshake(struct connect_wii_wiimote_t* wm,
      uint8_t event, uint8_t* data, uint16_t len)
{
   if (!wm)
      return 0;

   do
   {
      switch (wm->handshake_state)
      {
         case 0:



            WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE);
            wiimote_set_leds(wm, WIIMOTE_LED_NONE);



            wiimote_status(wm);

            wm->handshake_state=1;
            return 0;
         case 1:
            {


               int attachment = 0;

               if(event != WM_RPT_CTRL_STATUS)
                  return 0;



               if ((data[2] & WM_CTRL_STATUS_BYTE1_ATTACHMENT) ==
                     WM_CTRL_STATUS_BYTE1_ATTACHMENT)
                  attachment = 1;






               if (attachment && !WIIMOTE_IS_SET(wm, WIIMOTE_STATE_EXP))
               {
                  uint8_t buf = 0;



                  WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_EXP);



                  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE))
                  {


                     WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);


                     WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE);
                  }
                  buf = 0x55;
                  wiimote_write_data(wm, 0x04A400F0, &buf, 1);
                  retro_sleep(100);
                  buf = 0x00;
                  wiimote_write_data(wm, 0x04A400FB, &buf, 1);


                  retro_sleep(100);
                  wiimote_read_data(wm, WM_EXP_MEM_CALIBR + 220, 4);




                  wm->handshake_state = 4;
                  return 0;
               }
               else if (!attachment && WIIMOTE_IS_SET(wm, WIIMOTE_STATE_EXP))
               {

                  WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP);
                  wm->exp.type = EXP_NONE;

                  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE))
                  {



                     WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);


                     WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE);
                  }
               }

               if(!attachment && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE))
               {
                  wm->handshake_state = 2;
                  continue;
               }

               return 0;
            }
         case 2:




            wiimote_data_report(wm,WM_RPT_BTN);
            wm->handshake_state = 6;
            continue;
         case 3:




            wiimote_data_report(wm,WM_RPT_BTN_EXP);
            wm->handshake_state = 6;
            continue;
         case 4:
            {
               uint32_t id;
               int32_t *ptr = (int32_t*)data;

               if (event != WM_RPT_READ)
                  return 0;

               id = swap_if_little32(*ptr);

               switch (id)
               {
                  case 128:
                     retro_sleep(100);

                     wiimote_read_data(wm, WM_EXP_MEM_CALIBR, 16);
                     wm->handshake_state = 5;
                     break;
                  default:
                     wm->handshake_state = 2;



                     continue;
               }
            }
            return 0;
         case 5:
            if(event != WM_RPT_READ)
               return 0;

            wiimote_classic_ctrl_handshake(wm, &wm->exp.cc.classic, data,len);
            wm->handshake_state = 3;
            continue;
         case 6:
            WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE);
            WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_HANDSHAKE_COMPLETE);
            wm->handshake_state = 1;

            switch (wm->unid)
            {
               case 0:
                  wiimote_set_leds(wm, WIIMOTE_LED_1);
                  break;
               case 1:
                  wiimote_set_leds(wm, WIIMOTE_LED_2);
                  break;
               case 2:
                  wiimote_set_leds(wm, WIIMOTE_LED_3);
                  break;
               case 3:
                  wiimote_set_leds(wm, WIIMOTE_LED_4);
                  break;
            }
            return 1;
         default:
            break;
      }
   }while(1);
}
