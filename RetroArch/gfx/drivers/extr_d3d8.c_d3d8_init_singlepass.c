
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
struct TYPE_6__ {int valid; double scale_y; double scale_x; int type_y; int type_x; } ;
struct video_shader_pass {TYPE_2__ source; TYPE_1__ fbo; } ;
struct TYPE_9__ {int passes; int * pass; } ;
struct TYPE_8__ {int shader_path; TYPE_4__ shader; } ;
typedef TYPE_3__ d3d8_video_t ;


 int RARCH_SCALE_VIEWPORT ;
 int memset (TYPE_4__*,int ,int) ;
 int string_is_empty (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static bool d3d8_init_singlepass(d3d8_video_t *d3d)
{
   struct video_shader_pass *pass = ((void*)0);

   if (!d3d)
      return 0;

   memset(&d3d->shader, 0, sizeof(d3d->shader));
   d3d->shader.passes = 1;

   pass = (struct video_shader_pass*)
      &d3d->shader.pass[0];

   pass->fbo.valid = 1;
   pass->fbo.scale_y = 1.0;
   pass->fbo.type_y = RARCH_SCALE_VIEWPORT;
   pass->fbo.scale_x = pass->fbo.scale_y;
   pass->fbo.type_x = pass->fbo.type_y;

   if (!string_is_empty(d3d->shader_path))
      strlcpy(pass->source.path, d3d->shader_path,
            sizeof(pass->source.path));

   return 1;
}
