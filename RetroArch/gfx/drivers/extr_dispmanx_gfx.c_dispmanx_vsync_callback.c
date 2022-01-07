
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispmanx_surface {struct dispmanx_page* current_page; } ;
struct dispmanx_page {int used; TYPE_1__* dispvars; int page_used_mutex; struct dispmanx_surface* surface; } ;
struct TYPE_2__ {int pending_mutex; int vsync_condition; int pageflip_pending; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void dispmanx_vsync_callback(DISPMANX_UPDATE_HANDLE_T u, void *data)
{
   struct dispmanx_page *page = data;
   struct dispmanx_surface *surface = page->surface;




   if (surface->current_page)
   {
      slock_lock(surface->current_page->page_used_mutex);


      surface->current_page->used = 0;
      slock_unlock(surface->current_page->page_used_mutex);
   }



   surface->current_page = page;



   slock_lock(page->dispvars->pending_mutex);

   page->dispvars->pageflip_pending--;
   scond_signal(page->dispvars->vsync_condition);

   slock_unlock(page->dispvars->pending_mutex);
}
