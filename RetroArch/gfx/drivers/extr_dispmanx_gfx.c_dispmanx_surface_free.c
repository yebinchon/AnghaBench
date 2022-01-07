
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_video {scalar_t__ pageflip_pending; int update; int pending_mutex; int vsync_condition; } ;
struct dispmanx_surface {int numpages; int used; int element; struct dispmanx_surface* pages; int page_used_mutex; int resource; } ;


 int free (struct dispmanx_surface*) ;
 int scond_wait (int ,int ) ;
 int slock_free (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int vc_dispmanx_element_remove (int ,int ) ;
 int vc_dispmanx_resource_delete (int ) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void dispmanx_surface_free(struct dispmanx_video *_dispvars,
      struct dispmanx_surface **sp)
{
   int i;
   struct dispmanx_surface *surface = *sp;




   slock_lock(_dispvars->pending_mutex);
   if (_dispvars->pageflip_pending > 0)
      scond_wait(_dispvars->vsync_condition, _dispvars->pending_mutex);
   slock_unlock(_dispvars->pending_mutex);

   for (i = 0; i < surface->numpages; i++)
   {
      vc_dispmanx_resource_delete(surface->pages[i].resource);
      surface->pages[i].used = 0;
      slock_free(surface->pages[i].page_used_mutex);
   }

   free(surface->pages);

   _dispvars->update = vc_dispmanx_update_start(0);
   vc_dispmanx_element_remove(_dispvars->update, surface->element);
   vc_dispmanx_update_submit_sync(_dispvars->update);

   free(surface);
   *sp = ((void*)0);
}
