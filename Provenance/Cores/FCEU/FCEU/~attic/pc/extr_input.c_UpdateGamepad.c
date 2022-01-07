
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 scalar_t__ DTestButton (int *) ;
 scalar_t__ FCEUI_IsMovieActive () ;
 int ** GamePadConfig ;
 int JSreturn ;

__attribute__((used)) static void UpdateGamepad(void)
{
 if(FCEUI_IsMovieActive()<0)
   return;

 static int rapid=0;
 uint32 JS=0;
 int x;
 int wg;

 rapid^=1;

 for(wg=0;wg<4;wg++)
 {
  for(x=0;x<8;x++)
   if(DTestButton(&GamePadConfig[wg][x]))
    JS|=(1<<x)<<(wg<<3);

  if(rapid)
   for(x=0;x<2;x++)
     if(DTestButton(&GamePadConfig[wg][8+x]))
      JS|=(1<<x)<<(wg<<3);
  }
  JSreturn=JS;
}
