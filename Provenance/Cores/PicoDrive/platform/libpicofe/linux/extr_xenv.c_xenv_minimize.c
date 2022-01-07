
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ display; } ;


 TYPE_1__ g_xstuff ;
 int x11h_minimize () ;
 int xenv_update (int *,int *,int *,int *) ;

int xenv_minimize(void)
{
 int ret;

 if (g_xstuff.display) {
  xenv_update(((void*)0), ((void*)0), ((void*)0), ((void*)0));
  ret = x11h_minimize();
  xenv_update(((void*)0), ((void*)0), ((void*)0), ((void*)0));
  return ret;
 }

 return -1;
}
