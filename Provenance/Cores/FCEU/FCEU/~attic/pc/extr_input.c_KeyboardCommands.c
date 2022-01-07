
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int BACKSLASH ;
 int BACKSPACE ;
 int* BWorldData ;
 int CloseGame () ;
 int DIPS ;
 int DecreaseEmulationSpeed () ;
 int DoCheatSeq () ;
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
 int FCEUI_DatachSet (int *) ;
 int FCEUI_DispMessage (char*,...) ;
 int FCEUI_FDSInsert () ;
 int FCEUI_FDSSelect () ;
 int FCEUI_FrameAdvance () ;
 int FCEUI_LoadMovie (int *,int ) ;
 int FCEUI_LoadState (int *) ;
 int FCEUI_MovieToggleFrameDisplay () ;
 int FCEUI_NTSCDEC () ;
 int FCEUI_NTSCINC () ;
 int FCEUI_NTSCSELHUE () ;
 int FCEUI_NTSCSELTINT () ;
 int FCEUI_PowerNES () ;
 int FCEUI_ResetNES () ;
 int FCEUI_SaveMovie (int *,int ,int *) ;
 int FCEUI_SaveSnapshot () ;
 int FCEUI_SaveState (int *) ;
 int FCEUI_SetRenderDisable (int,int) ;
 int FCEUI_ToggleEmulationPause () ;
 int FCEUI_ToggleTileView () ;
 int FCEUI_VSUniCoin () ;
 int FCEUI_VSUniToggleDIP (int) ;
 int FCEUI_VSUniToggleDIPView () ;
 scalar_t__ GIT_FDS ;
 scalar_t__ GIT_NSF ;
 scalar_t__ GIT_VSUNI ;
 int GRAVE ;
 int GUI_Hide (int) ;
 int GUI_RequestExit () ;
 int GetKeyboard () ;
 int H ;
 int IncreaseEmulationSpeed () ;
 scalar_t__* InputType ;
 int KEY (int) ;
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
 int SDL_GRAB_OFF ;
 int SDL_GRAB_ON ;
 int SDL_WM_GrabInput (int ) ;
 scalar_t__ SIFC_BWORLD ;
 scalar_t__ SIFC_FKB ;
 scalar_t__ SIS_DATACH ;
 int SSM (int) ;
 int T ;
 int ToggleFS () ;
 int cidisabled ;
 scalar_t__ cspec ;
 scalar_t__ gametype ;
 scalar_t__ keyonly (int) ;
 int keys ;
 int strcpy (int*,int *) ;

__attribute__((used)) static void KeyboardCommands(void)
{
  int is_shift, is_alt;

  keys=GetKeyboard();

  if(InputType[2]==SIFC_FKB)
  {
   if(keyonly(SCROLLLOCK))
   {
    cidisabled^=1;
    FCEUI_DispMessage("Family Keyboard %sabled.",cidisabled?"en":"dis");
   }



   if(cidisabled) return;
  }

  is_shift = KEY(LEFTSHIFT) | KEY(RIGHTSHIFT);
  is_alt = KEY(LEFTALT) | KEY(RIGHTALT);

  if(keyonly(F4))
  {
   if(is_shift) FCEUI_SetRenderDisable(-1, 2);
   else FCEUI_SetRenderDisable(2, -1);
  }




  NoWaiting&=~1;
  if(KEY(GRAVE))
   NoWaiting|=1;

  if(gametype==GIT_FDS)
  {
   if(keyonly(F6)) FCEUI_FDSSelect();
   if(keyonly(F8)) FCEUI_FDSInsert();
  }

  if(keyonly(F9)) FCEUI_SaveSnapshot();
  if(gametype!=GIT_NSF)
  {

   if(keyonly(F2)) DoCheatSeq();

   if(keyonly(F5))
   {
    if(is_shift)
     FCEUI_SaveMovie(((void*)0),0,((void*)0));
    else
     FCEUI_SaveState(((void*)0));
   }
   if(keyonly(F7))
   {
    if(is_shift)
     FCEUI_LoadMovie(((void*)0),0);
    else
     FCEUI_LoadState(((void*)0));
   }
  }

  if(keyonly(F1)) FCEUI_ToggleTileView();

  if(keyonly(MINUS)) DecreaseEmulationSpeed();
  if(keyonly(EQUAL)) IncreaseEmulationSpeed();
  if(keyonly(BACKSPACE)) FCEUI_MovieToggleFrameDisplay();
  if(keyonly(BACKSLASH)) FCEUI_ToggleEmulationPause();
  if(keyonly(RIGHTCONTROL)) FCEUI_FrameAdvance();

  if(keyonly(F10)) FCEUI_ResetNES();
  if(keyonly(F11)) FCEUI_PowerNES();






  if(KEY(F12) || KEY(ESCAPE)) CloseGame();


  if(gametype==GIT_VSUNI)
  {
 if(keyonly(F8)) FCEUI_VSUniCoin();
 if(keyonly(F6))
        {
  DIPS^=1;
  FCEUI_VSUniToggleDIPView();
 }
 if(!(DIPS&1)) goto DIPSless;
 if(keyonly(1)) FCEUI_VSUniToggleDIP(0);
 if(keyonly(2)) FCEUI_VSUniToggleDIP(1);
 if(keyonly(3)) FCEUI_VSUniToggleDIP(2);
 if(keyonly(4)) FCEUI_VSUniToggleDIP(3);
 if(keyonly(5)) FCEUI_VSUniToggleDIP(4);
 if(keyonly(6)) FCEUI_VSUniToggleDIP(5);
 if(keyonly(7)) FCEUI_VSUniToggleDIP(6);
 if(keyonly(8)) FCEUI_VSUniToggleDIP(7);
  }
  else
  {
   static uint8 bbuf[32];
   static int bbuft;
   static int barcoder = 0;

   if(keyonly(H)) FCEUI_NTSCSELHUE();
   if(keyonly(T)) FCEUI_NTSCSELTINT();
   if(KEY(KP_MINUS) || KEY(MINUS)) FCEUI_NTSCDEC();
   if(KEY(KP_PLUS) || KEY(EQUAL)) FCEUI_NTSCINC();

   if((InputType[2] == SIFC_BWORLD) || (cspec == SIS_DATACH))
   {
    if(keyonly(F8))
    {
     barcoder ^= 1;
     if(!barcoder)
     {
      if(InputType[2] == SIFC_BWORLD)
      {
       strcpy(&BWorldData[1],bbuf);
       BWorldData[0]=1;
      }
      else
       FCEUI_DatachSet(bbuf);
      FCEUI_DispMessage("Barcode Entered");
     }
     else { bbuft = 0; FCEUI_DispMessage("Enter Barcode");}
    }
   } else barcoder = 0;
   DIPSless:
   if(keyonly(0)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 0; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(0,1); else FCEUI_SelectState(0,1); } };
   if(keyonly(1)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 1; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(1,1); else FCEUI_SelectState(1,1); } };
   if(keyonly(2)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 2; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(2,1); else FCEUI_SelectState(2,1); } };
   if(keyonly(3)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 3; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(3,1); else FCEUI_SelectState(3,1); } };
   if(keyonly(4)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 4; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(4,1); else FCEUI_SelectState(4,1); } };
   if(keyonly(5)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 5; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(5,1); else FCEUI_SelectState(5,1); } };
   if(keyonly(6)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 6; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(6,1); else FCEUI_SelectState(6,1); } };
   if(keyonly(7)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 7; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(7,1); else FCEUI_SelectState(7,1); } };
   if(keyonly(8)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 8; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(8,1); else FCEUI_SelectState(8,1); } };
   if(keyonly(9)) { if(barcoder) { if(bbuft < 13) {bbuf[bbuft++] = '0' + 9; bbuf[bbuft] = 0;} FCEUI_DispMessage("Barcode: %s",bbuf);} else { if(is_shift) FCEUI_SelectMovie(9,1); else FCEUI_SelectState(9,1); } };

 }
}
