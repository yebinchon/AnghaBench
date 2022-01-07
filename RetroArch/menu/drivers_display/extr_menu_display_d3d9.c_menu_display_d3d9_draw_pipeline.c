
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_13__ {int coords; } ;
typedef TYPE_5__ video_coord_array_t ;
struct video_coords {int dummy; } ;
struct TYPE_11__ {float v0; } ;
struct TYPE_12__ {TYPE_3__ f; } ;
struct TYPE_10__ {int enable; int add_prefix; int idx; char* ident; int type; } ;
struct uniform_info {int enabled; TYPE_4__ result; TYPE_2__ lookup; int type; int member_0; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_14__ {TYPE_1__ pipeline; struct video_coords* coords; int * matrix_data; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_6__ menu_display_ctx_draw_t ;


 int SHADER_PROGRAM_VERTEX ;
 int UNIFORM_1F ;



 TYPE_5__* menu_display_get_coords_array () ;

__attribute__((used)) static void menu_display_d3d9_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
}
