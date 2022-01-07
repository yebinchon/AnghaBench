
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int* refcounts; scalar_t__* screens; int lock; } ;
typedef scalar_t__ DISPMANX_DISPLAY_HANDLE_T ;


 scalar_t__ DISPMANX_NO_HANDLE ;
 int GX_LOG (char*,size_t) ;
 TYPE_1__ gx ;
 scalar_t__ vc_dispmanx_display_open (size_t) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static
int32_t gx_priv_open_screen(uint32_t index, DISPMANX_DISPLAY_HANDLE_T *pscreen)
{
   int ret = -1;
   vcos_mutex_lock(&gx.lock);

   if (gx.refcounts[index] != 0)
   {
      *pscreen = gx.screens[index];
      gx.refcounts[index]++;
      ret = 0;
   }
   else
   {
      DISPMANX_DISPLAY_HANDLE_T h = vc_dispmanx_display_open(index);
      if (h == DISPMANX_NO_HANDLE)
      {
         GX_LOG("Could not open dispmanx display %d", index);
         ret = -1;
         goto finish;
      }
      gx.screens[index] = h;
      gx.refcounts[index] = 1;
      *pscreen = h;
      ret = 0;
   }
finish:
   vcos_mutex_unlock(&gx.lock);
   return ret;
}
