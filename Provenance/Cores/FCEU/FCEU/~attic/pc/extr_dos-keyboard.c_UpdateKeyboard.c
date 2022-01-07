
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SCAN_C ;
 size_t SCAN_LEFTCONTROL ;
 int SIGINT ;
 scalar_t__* keybuf ;
 int newk ;
 int raise (int ) ;

int UpdateKeyboard(void)
{
 int t=newk;

 if(t)
 {
  asm volatile(
        "subl %%eax,_newk\n\t"
 :
 : "a" (t)
  );

  if(keybuf[SCAN_LEFTCONTROL] && keybuf[SCAN_C])
   raise(SIGINT);
  return(1);
 }
 return(0);
}
