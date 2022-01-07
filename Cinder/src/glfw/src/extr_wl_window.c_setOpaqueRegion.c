
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_region {int dummy; } ;
struct TYPE_7__ {int surface; int height; int width; } ;
struct TYPE_8__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int compositor; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;


 TYPE_5__ _glfw ;
 struct wl_region* wl_compositor_create_region (int ) ;
 int wl_region_add (struct wl_region*,int ,int ,int ,int ) ;
 int wl_region_destroy (struct wl_region*) ;
 int wl_surface_commit (int ) ;
 int wl_surface_set_opaque_region (int ,struct wl_region*) ;

__attribute__((used)) static void setOpaqueRegion(_GLFWwindow* window)
{
    struct wl_region* region;

    region = wl_compositor_create_region(_glfw.wl.compositor);
    if (!region)
        return;

    wl_region_add(region, 0, 0, window->wl.width, window->wl.height);
    wl_surface_set_opaque_region(window->wl.surface, region);
    wl_surface_commit(window->wl.surface);
    wl_region_destroy(region);
}
