
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int plane_id; } ;
typedef TYPE_1__ drmModePlane ;
typedef TYPE_2__* drmModeObjectPropertiesPtr ;
struct TYPE_10__ {int fd; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {int count_props; int * prop_values; int * props; } ;


 int DRM_MODE_OBJECT_PLANE ;
 TYPE_6__ drm ;
 TYPE_5__* drmModeGetProperty (int ,int ) ;
 TYPE_2__* drmModeObjectGetProperties (int ,int ,int ) ;
 scalar_t__ string_is_equal (int ,char*) ;

__attribute__((used)) static uint64_t drm_plane_type(drmModePlane *plane)
{
   int i,j;






   drmModeObjectPropertiesPtr props =
      drmModeObjectGetProperties(drm.fd, plane->plane_id,
            DRM_MODE_OBJECT_PLANE);

   for (j = 0; j < props->count_props; j++)
   {

      if (string_is_equal(
               drmModeGetProperty(drm.fd, props->props[j])->name, "type"))
         return (props->prop_values[j]);
   }

   return (0);
}
