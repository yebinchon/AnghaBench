
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispmanx_surface {int bmp_rect; int pitch; int pixformat; struct dispmanx_page* pages; } ;
struct dispmanx_page {int resource; } ;


 int vc_dispmanx_resource_write_data (int ,int ,int ,void*,int *) ;

__attribute__((used)) static void dispmanx_surface_update_async(const void *frame, struct dispmanx_surface *surface)
{
   struct dispmanx_page *page = ((void*)0);


   page = &(surface->pages[0]);


   vc_dispmanx_resource_write_data(page->resource, surface->pixformat,
         surface->pitch, (void*)frame, &(surface->bmp_rect));
}
