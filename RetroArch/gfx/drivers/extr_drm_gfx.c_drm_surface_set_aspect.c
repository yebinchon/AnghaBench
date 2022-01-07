
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_surface {float aspect; } ;



__attribute__((used)) static void drm_surface_set_aspect(struct drm_surface *surface, float aspect)
{
 surface->aspect = aspect;
}
