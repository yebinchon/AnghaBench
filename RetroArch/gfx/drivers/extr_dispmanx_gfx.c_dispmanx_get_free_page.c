
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_video {scalar_t__ pageflip_pending; int pending_mutex; int vsync_condition; } ;
struct dispmanx_surface {unsigned int numpages; struct dispmanx_page* pages; } ;
struct dispmanx_page {int used; int page_used_mutex; } ;


 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static struct dispmanx_page *dispmanx_get_free_page(struct dispmanx_video *_dispvars,
      struct dispmanx_surface *surface)
{
   unsigned i;
   struct dispmanx_page *page = ((void*)0);

   while (!page)
   {

      for (i = 0; i < surface->numpages; ++i)
      {
         if (!surface->pages[i].used)
         {
            page = (surface->pages) + i;
            break;
         }
      }



      if (!page)
      {
         slock_lock(_dispvars->pending_mutex);
          if (_dispvars->pageflip_pending > 0)
             scond_wait(_dispvars->vsync_condition, _dispvars->pending_mutex);
         slock_unlock(_dispvars->pending_mutex);
      }
   }


   slock_lock(page->page_used_mutex);
   page->used = 1;
   slock_unlock(page->page_used_mutex);

   return page;
}
