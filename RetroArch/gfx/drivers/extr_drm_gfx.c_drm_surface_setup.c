
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_video {int dummy; } ;
struct drm_surface {int numpages; int total_pitch; int pitch; int bpp; int src_width; int src_height; float aspect; scalar_t__ flip_page; struct drm_page* pages; int pixformat; } ;
struct TYPE_3__ {int width; int height; } ;
struct drm_page {int used; TYPE_1__ buf; int page_used_mutex; struct drm_video* drmvars; struct drm_surface* surface; } ;
struct TYPE_4__ {int fd; } ;


 int RARCH_ERR (char*) ;
 struct drm_surface* calloc (int,int) ;
 TYPE_2__ drm ;
 int modeset_create_dumbfb (int ,TYPE_1__*,int,int ) ;
 int slock_new () ;

__attribute__((used)) static void drm_surface_setup(void *data, int src_width, int src_height,
      int pitch, int bpp, uint32_t pixformat,
      int alpha, float aspect, int numpages, int layer,
      struct drm_surface **sp)
{
   struct drm_video *_drmvars = data;
   int i;
   struct drm_surface *surface = ((void*)0);

   *sp = calloc (1, sizeof(struct drm_surface));

   surface = *sp;


   surface->numpages = numpages;





   surface->total_pitch = pitch;
   surface->pitch = src_width * bpp;
   surface->bpp = bpp;
   surface->pixformat = pixformat;
   surface->src_width = src_width;
   surface->src_height = src_height;
   surface->aspect = aspect;



   surface->pages = (struct drm_page*)
      calloc(surface->numpages, sizeof(struct drm_page));

   for (i = 0; i < surface->numpages; i++)
   {
      surface->pages[i].used = 0;
      surface->pages[i].surface = surface;
      surface->pages[i].drmvars = _drmvars;
      surface->pages[i].page_used_mutex = slock_new();
   }


   for (i = 0; i < surface->numpages; i++)
   {
      surface->pages[i].buf.width = src_width;
      surface->pages[i].buf.height = src_height;
      int ret = modeset_create_dumbfb(
            drm.fd, &surface->pages[i].buf, bpp, pixformat);

      if (ret)
      {
         RARCH_ERR ("DRM: can't create fb\n");
      }
   }

   surface->flip_page = 0;
}
