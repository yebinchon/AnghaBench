
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__ prop_id; int name; } ;
typedef TYPE_1__ drmModePropertyRes ;
struct TYPE_13__ {int count_planes; int * planes; } ;
typedef TYPE_2__ drmModePlaneRes ;
struct TYPE_14__ {scalar_t__ plane_id; } ;
typedef TYPE_3__ drmModePlane ;
struct TYPE_15__ {int count_props; int * props; } ;
typedef TYPE_4__ drmModeObjectProperties ;
struct TYPE_11__ {int fd; } ;


 int DRM_MODE_OBJECT_PLANE ;
 int RARCH_ERR (char*,scalar_t__,char const*) ;
 TYPE_10__ drm ;
 TYPE_3__* drmModeGetPlane (int ,int ) ;
 TYPE_2__* drmModeGetPlaneResources (int ) ;
 TYPE_1__* drmModeGetProperty (int ,int ) ;
 TYPE_4__* drmModeObjectGetProperties (int ,scalar_t__,int ) ;
 TYPE_1__** malloc (int) ;
 scalar_t__ string_is_equal (int ,char const*) ;

__attribute__((used)) static uint32_t get_plane_prop_id(uint32_t obj_id, const char *name)
{
   int i,j;
   drmModePlaneRes *plane_resources;
   drmModePlane *plane;
   drmModeObjectProperties *props;
   drmModePropertyRes **props_info;

   char format_str[5];

   plane_resources = drmModeGetPlaneResources(drm.fd);
   for (i = 0; i < plane_resources->count_planes; i++)
   {
      plane = drmModeGetPlane(drm.fd, plane_resources->planes[i]);
      if (plane->plane_id != obj_id)
         continue;





      props = drmModeObjectGetProperties(drm.fd,
            plane->plane_id, DRM_MODE_OBJECT_PLANE);
      props_info = malloc(props->count_props * sizeof *props_info);

      for (j = 0; j < props->count_props; ++j)
         props_info[j] = drmModeGetProperty(drm.fd, props->props[j]);


      for (j = 0; j < props->count_props; j++)
      {
         if (string_is_equal(props_info[j]->name, name))
            return props_info[j]->prop_id;
      }
      RARCH_ERR ("DRM: plane %d fb property ID with name %s not found\n",
            plane->plane_id, name);
   }
   return (0);
}
