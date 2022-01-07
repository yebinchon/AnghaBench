
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIN_StopCinematic (int) ;
 int CL_handle ;
 int MAX_VIDEO_HANDLES ;
 int S_StopAllSounds () ;

void SCR_StopCinematic(void) {
 if (CL_handle >= 0 && CL_handle < MAX_VIDEO_HANDLES) {
  CIN_StopCinematic(CL_handle);
  S_StopAllSounds ();
  CL_handle = -1;
 }
}
