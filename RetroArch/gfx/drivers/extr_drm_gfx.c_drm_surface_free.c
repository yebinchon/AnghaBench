
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_video {int dummy; } ;
struct drm_surface {int numpages; int used; struct drm_surface* pages; } ;


 int free (struct drm_surface*) ;

__attribute__((used)) static void drm_surface_free(void *data, struct drm_surface **sp)
{
   int i;
   struct drm_video *_drmvars = data;
   struct drm_surface *surface = *sp;

   for (i = 0; i < surface->numpages; i++)
      surface->pages[i].used = 0;

   free(surface->pages);

   free(surface);
   *sp = ((void*)0);
}
