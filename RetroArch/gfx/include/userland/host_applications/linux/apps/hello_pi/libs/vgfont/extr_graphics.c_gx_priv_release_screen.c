
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__* refcounts; int lock; int * screens; } ;


 int DISPMANX_NO_HANDLE ;
 TYPE_1__ gx ;
 int vc_dispmanx_display_close (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static
int32_t gx_priv_release_screen(uint32_t index)
{
   vcos_mutex_lock(&gx.lock);
   gx.refcounts[index]--;
   if (gx.refcounts[index] == 0)
   {
      vc_dispmanx_display_close(gx.screens[index]);
      gx.screens[index] = DISPMANX_NO_HANDLE;
   }
   vcos_mutex_unlock(&gx.lock);
   return 0;
}
