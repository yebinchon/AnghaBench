
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FCEUGI ;


 int InitVideo (int *) ;
 int KillVideo () ;
 int _fullscreen ;

void ToggleFS(void)
{
 extern FCEUGI *CurGame;
 KillVideo();
 _fullscreen=!_fullscreen;

 if(!InitVideo(CurGame))
 {
  _fullscreen=!_fullscreen;
  InitVideo(CurGame);
 }
}
