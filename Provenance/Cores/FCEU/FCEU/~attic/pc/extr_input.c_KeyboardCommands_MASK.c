#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int BACKSLASH ; 
 int BACKSPACE ; 
 int* BWorldData ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int DIPS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ENTER ; 
 int EQUAL ; 
 int ESCAPE ; 
 int F1 ; 
 int F10 ; 
 int F11 ; 
 int F12 ; 
 int F2 ; 
 int F3 ; 
 int F4 ; 
 int F5 ; 
 int F6 ; 
 int F7 ; 
 int F8 ; 
 int F9 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ GIT_FDS ; 
 scalar_t__ GIT_NSF ; 
 scalar_t__ GIT_VSUNI ; 
 int GRAVE ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int H ; 
 int /*<<< orphan*/  FUNC29 () ; 
 scalar_t__* InputType ; 
 int FUNC30 (int) ; 
 int KP_MINUS ; 
 int KP_PLUS ; 
 int LEFTALT ; 
 int LEFTSHIFT ; 
 int MINUS ; 
 int NoWaiting ; 
 int RIGHTALT ; 
 int RIGHTCONTROL ; 
 int RIGHTSHIFT ; 
 int SCROLLLOCK ; 
 int /*<<< orphan*/  SDL_GRAB_OFF ; 
 int /*<<< orphan*/  SDL_GRAB_ON ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIFC_BWORLD ; 
 scalar_t__ SIFC_FKB ; 
 scalar_t__ SIS_DATACH ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int T ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int cidisabled ; 
 scalar_t__ cspec ; 
 scalar_t__ gametype ; 
 scalar_t__ FUNC34 (int) ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  FUNC35 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC36(void)
{
  int is_shift, is_alt;

  keys=FUNC28(); 

  if(InputType[2]==SIFC_FKB)
  {
   if(FUNC34(SCROLLLOCK)) 
   {
    cidisabled^=1;
    FUNC4("Family Keyboard %sabled.",cidisabled?"en":"dis");
   }
   #ifdef SDL
   SDL_WM_GrabInput(cidisabled?SDL_GRAB_ON:SDL_GRAB_OFF);
   #endif
   if(cidisabled) return;
  }

  is_shift = FUNC30(LEFTSHIFT) | FUNC30(RIGHTSHIFT);
  is_alt = FUNC30(LEFTALT) | FUNC30(RIGHTALT);

  if(FUNC34(F4))
  {
   if(is_shift) FUNC20(-1, 2);
   else FUNC20(2, -1);
  }
  #ifdef SDL
  if(keyonly(ENTER) && is_alt) ToggleFS();
  #endif

  NoWaiting&=~1;
  if(FUNC30(GRAVE))
   NoWaiting|=1;

  if(gametype==GIT_FDS)
  {
   if(FUNC34(F6)) FUNC6();
   if(FUNC34(F8)) FUNC5();
  }

  if(FUNC34(F9)) FUNC18();
  if(gametype!=GIT_NSF)
  {
   #ifndef EXTGUI
   if(FUNC34(F2)) FUNC2();
   #endif
   if(FUNC34(F5)) 
   {
    if(is_shift)
     FUNC17(NULL,0,NULL);
    else
     FUNC19(NULL);
   }
   if(FUNC34(F7)) 
   {
    if(is_shift)
     FUNC8(NULL,0);
    else
     FUNC9(NULL);
   }
  }

  if(FUNC34(F1)) FUNC22();

  if(FUNC34(MINUS)) FUNC1();
  if(FUNC34(EQUAL)) FUNC29();
  if(FUNC34(BACKSPACE)) FUNC10();
  if(FUNC34(BACKSLASH)) FUNC21();
  if(FUNC34(RIGHTCONTROL)) FUNC7();

  if(FUNC34(F10)) FUNC16();
  if(FUNC34(F11)) FUNC15();

  #ifdef EXTGUI
  if(keyonly(F3)) GUI_Hide(-1);
  if(KEY(F12)) GUI_RequestExit();
  if(KEY(ESCAPE)) CloseGame();
  #else
  if(FUNC30(F12) || FUNC30(ESCAPE)) FUNC0();
  #endif

  if(gametype==GIT_VSUNI)
  {
	if(FUNC34(F8)) FUNC23();
	if(FUNC34(F6))
        {
	 DIPS^=1;
	 FUNC25();
	}
	if(!(DIPS&1)) goto DIPSless;
	if(FUNC34(1)) FUNC24(0);
	if(FUNC34(2)) FUNC24(1);
	if(FUNC34(3)) FUNC24(2);
	if(FUNC34(4)) FUNC24(3);
	if(FUNC34(5)) FUNC24(4);
	if(FUNC34(6)) FUNC24(5);
	if(FUNC34(7)) FUNC24(6);
	if(FUNC34(8)) FUNC24(7);
  }
  else
  {
   static uint8 bbuf[32];
   static int bbuft;
   static int barcoder = 0;

   if(FUNC34(H)) FUNC13();
   if(FUNC34(T)) FUNC14();
   if(FUNC30(KP_MINUS) || FUNC30(MINUS)) FUNC11();
   if(FUNC30(KP_PLUS) || FUNC30(EQUAL)) FUNC12();

   if((InputType[2] == SIFC_BWORLD) || (cspec == SIS_DATACH))
   {
    if(FUNC34(F8)) 
    {
     barcoder ^= 1;
     if(!barcoder)
     {
      if(InputType[2] == SIFC_BWORLD)
      {
       FUNC35(&BWorldData[1],bbuf);
       BWorldData[0]=1;
      }
      else
       FUNC3(bbuf);
      FUNC4("Barcode Entered");
     } 
     else { bbuft = 0; FUNC4("Enter Barcode");}
    }
   } else barcoder = 0;

	#define SSM(x)		\
	{ if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + x; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);}	\
	else { 			\
	 if(is_shift) FCEUI_SelectMovie(x,1); 	\
	 else FCEUI_SelectState(x,1); 	\
	} }

   DIPSless:
   if(FUNC34(0)) SSM(0);
   if(FUNC34(1)) SSM(1);
   if(FUNC34(2)) SSM(2);
   if(FUNC34(3)) SSM(3);
   if(FUNC34(4)) SSM(4);
   if(FUNC34(5)) SSM(5);
   if(FUNC34(6)) SSM(6);
   if(FUNC34(7)) SSM(7);
   if(FUNC34(8)) SSM(8);
   if(FUNC34(9)) SSM(9);
   #undef SSM
 }
}