
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVENT ;


 int OSSetEvent (int *) ;

void Set(EVENT *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 OSSetEvent(e);
}
