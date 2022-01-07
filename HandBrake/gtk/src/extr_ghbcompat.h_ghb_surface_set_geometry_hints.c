
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbSurfaceHints ;
typedef int GhbSurface ;
typedef int GdkGeometry ;


 int gdk_window_set_geometry_hints (int *,int const*,int ) ;

__attribute__((used)) static inline void
ghb_surface_set_geometry_hints(GhbSurface * surface,
                               const GdkGeometry * geometry,
                               GhbSurfaceHints geom_mask)
{
    gdk_window_set_geometry_hints(surface, geometry, geom_mask);
}
