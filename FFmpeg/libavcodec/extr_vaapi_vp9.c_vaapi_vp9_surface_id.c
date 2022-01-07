
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
struct TYPE_5__ {TYPE_1__ tf; } ;
typedef TYPE_2__ VP9Frame ;
typedef int VASurfaceID ;


 int VA_INVALID_SURFACE ;
 int ff_vaapi_get_surface_id (int ) ;

__attribute__((used)) static VASurfaceID vaapi_vp9_surface_id(const VP9Frame *vf)
{
    if (vf)
        return ff_vaapi_get_surface_id(vf->tf.f);
    else
        return VA_INVALID_SURFACE;
}
