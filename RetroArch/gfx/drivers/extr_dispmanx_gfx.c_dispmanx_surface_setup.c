
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dispmanx_video {float dispmanx_height; int dispmanx_width; int update; int display; int vc_image_ptr; } ;
struct TYPE_4__ {int opacity; scalar_t__ mask; int flags; } ;
struct dispmanx_surface {int numpages; TYPE_2__ alpha; int src_rect; TYPE_1__* pages; int dst_rect; int element; int bmp_rect; TYPE_1__* next_page; int pitch; } ;
struct dispmanx_page {int dummy; } ;
typedef scalar_t__ VC_IMAGE_TYPE_T ;
struct TYPE_3__ {int used; int resource; int page_used_mutex; struct dispmanx_video* dispvars; struct dispmanx_surface* surface; } ;
typedef int DISPMANX_TRANSFORM_T ;


 int ALIGN_UP (int,int) ;
 int DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS ;
 int DISPMANX_PROTECTION_NONE ;
 scalar_t__ VC_IMAGE_XRGB8888 ;
 void* calloc (int,int) ;
 int slock_new () ;
 int vc_dispmanx_element_add (int ,int ,int,int *,int ,int *,int ,TYPE_2__*,int ,int ) ;
 int vc_dispmanx_rect_set (int *,int,int,int,int) ;
 int vc_dispmanx_resource_create (scalar_t__,int,int,int *) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void dispmanx_surface_setup(struct dispmanx_video *_dispvars,
      int src_width, int src_height,
      int visible_pitch, int bpp, VC_IMAGE_TYPE_T pixformat,
      int alpha, float aspect, int numpages, int layer,
      struct dispmanx_surface **sp)
{
   int i, dst_width, dst_height, dst_xpos, dst_ypos, visible_width;
   struct dispmanx_surface *surface = ((void*)0);

   *sp = calloc(1, sizeof(struct dispmanx_surface));

   surface = *sp;


   surface->numpages = numpages;



   surface->pitch = ALIGN_UP(visible_pitch, (pixformat == VC_IMAGE_XRGB8888 ? 64 : 32));


   surface->alpha.flags = DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS;
   surface->alpha.opacity = alpha;
   surface->alpha.mask = 0;



   surface->pages = calloc(surface->numpages, sizeof(struct dispmanx_page));

   for (i = 0; i < surface->numpages; i++)
   {
      surface->pages[i].used = 0;
      surface->pages[i].surface = surface;
      surface->pages[i].dispvars = _dispvars;
      surface->pages[i].page_used_mutex = slock_new();
   }



   surface->next_page = &(surface->pages[0]);
   surface->next_page->used = 1;



   visible_width = visible_pitch / (bpp / 8);

   dst_width = _dispvars->dispmanx_height * aspect;
   dst_height = _dispvars->dispmanx_height;



   if (dst_width > _dispvars->dispmanx_width)
      dst_width = _dispvars->dispmanx_width;

   dst_xpos = (_dispvars->dispmanx_width - dst_width) / 2;
   dst_ypos = (_dispvars->dispmanx_height - dst_height) / 2;


   vc_dispmanx_rect_set(&surface->dst_rect, dst_xpos, dst_ypos, dst_width, dst_height);
   vc_dispmanx_rect_set(&surface->bmp_rect, 0, 0, src_width, src_height);
   vc_dispmanx_rect_set(&surface->src_rect, 0, 0, src_width << 16, src_height << 16);

   for (i = 0; i < surface->numpages; i++)
   {
      surface->pages[i].resource = vc_dispmanx_resource_create(pixformat,
            visible_width, src_height, &(_dispvars->vc_image_ptr));
   }

   _dispvars->update = vc_dispmanx_update_start(0);

   surface->element = vc_dispmanx_element_add(
         _dispvars->update,_dispvars->display, layer,
         &surface->dst_rect, surface->pages[0].resource,
         &surface->src_rect, DISPMANX_PROTECTION_NONE,
         &surface->alpha, 0, (DISPMANX_TRANSFORM_T)0);

   vc_dispmanx_update_submit_sync(_dispvars->update);
}
