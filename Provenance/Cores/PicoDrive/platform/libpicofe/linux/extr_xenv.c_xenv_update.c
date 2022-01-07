
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ display; } ;


 TYPE_1__ g_xstuff ;
 int x11h_update (int (*) (void*,int,int),int (*) (void*,int,int,int,int),int (*) (void*,int,int),void*) ;

int xenv_update(int (*key_cb)(void *cb_arg, int kc, int is_pressed),
  int (*mouseb_cb)(void *cb_arg, int x, int y, int button, int is_pressed),
  int (*mousem_cb)(void *cb_arg, int x, int y),
  void *cb_arg)
{
 if (g_xstuff.display) {
  x11h_update(key_cb, mouseb_cb, mousem_cb, cb_arg);
  return 0;
 }


 return -1;
}
