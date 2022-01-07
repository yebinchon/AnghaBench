
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;


 int SERVER_DEF_PORTS_1 ;
 int SERVER_DEF_PORTS_2 ;
 int SERVER_DEF_PORTS_3 ;
 int SERVER_DEF_PORTS_4 ;
 int SiAddListener (int *,int ,int) ;
 int SiLockListenerList (int *) ;
 int SiUnlockListenerList (int *) ;

void SiInitListenerList(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 SiLockListenerList(s);
 {
  {

   SiAddListener(s, SERVER_DEF_PORTS_1, 1);
   SiAddListener(s, SERVER_DEF_PORTS_2, 1);
   SiAddListener(s, SERVER_DEF_PORTS_3, 1);
   SiAddListener(s, SERVER_DEF_PORTS_4, 1);
  }
 }
 SiUnlockListenerList(s);
}
