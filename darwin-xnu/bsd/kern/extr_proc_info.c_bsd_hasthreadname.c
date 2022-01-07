
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {scalar_t__ pth_name; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;

boolean_t
bsd_hasthreadname(void *uth)
{
 struct uthread *ut = (struct uthread*)uth;


 if (ut->pth_name) {
  return TRUE;
 } else {
  return FALSE;
 }
}
