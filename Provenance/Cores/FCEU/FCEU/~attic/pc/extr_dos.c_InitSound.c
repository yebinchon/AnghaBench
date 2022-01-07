
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEUI_Sound (int) ;
 int InitSB (int,int) ;
 scalar_t__ f8bit ;
 int soundo ;

int InitSound(void)
{
 if(soundo)
 {
  if(soundo==1)
   soundo=44100;
  soundo=InitSB(soundo,f8bit?0:1);
  FCEUI_Sound(soundo);
 }
 return(soundo);
}
