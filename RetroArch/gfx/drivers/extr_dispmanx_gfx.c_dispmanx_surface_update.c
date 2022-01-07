
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispmanx_video {scalar_t__ pageflip_pending; int update; int pending_mutex; int vsync_condition; } ;
struct dispmanx_surface {TYPE_1__* next_page; int element; int bmp_rect; int pitch; int pixformat; } ;
struct TYPE_2__ {int resource; } ;


 TYPE_1__* dispmanx_get_free_page (struct dispmanx_video*,struct dispmanx_surface*) ;
 int dispmanx_vsync_callback ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vc_dispmanx_element_change_source (int ,int ,int ) ;
 int vc_dispmanx_resource_write_data (int ,int ,int ,void*,int *) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit (int ,int ,void*) ;

__attribute__((used)) static void dispmanx_surface_update(struct dispmanx_video *_dispvars, const void *frame,
      struct dispmanx_surface *surface)
{

   vc_dispmanx_resource_write_data(surface->next_page->resource, surface->pixformat,
         surface->pitch, (void*)frame, &(surface->bmp_rect));



   slock_lock(_dispvars->pending_mutex);
   if (_dispvars->pageflip_pending > 0)
      scond_wait(_dispvars->vsync_condition, _dispvars->pending_mutex);
   slock_unlock(_dispvars->pending_mutex);


   _dispvars->update = vc_dispmanx_update_start(0);

   vc_dispmanx_element_change_source(_dispvars->update, surface->element,
         surface->next_page->resource);

   slock_lock(_dispvars->pending_mutex);
   _dispvars->pageflip_pending++;
   slock_unlock(_dispvars->pending_mutex);

   vc_dispmanx_update_submit(_dispvars->update,
      dispmanx_vsync_callback, (void*)(surface->next_page));


   surface->next_page = dispmanx_get_free_page(_dispvars, surface);
}
