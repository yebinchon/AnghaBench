
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClipCursor (int *) ;
 int ReleaseCapture () ;
 scalar_t__ ShowCursor (int ) ;
 int TRUE ;

void IN_DeactivateWin32Mouse( void )
{
 ClipCursor (((void*)0));
 ReleaseCapture ();
 while (ShowCursor (TRUE) < 0)
  ;
}
