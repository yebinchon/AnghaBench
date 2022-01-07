
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ userdata; } ;
typedef TYPE_6__ video_frame_info_t ;
struct TYPE_20__ {int coords; } ;
typedef TYPE_7__ video_coord_array_t ;
struct video_coords {int dummy; } ;
struct TYPE_16__ {float v0; int v1; } ;
struct TYPE_17__ {TYPE_3__ f; } ;
struct TYPE_15__ {char* ident; int idx; int add_prefix; int enable; int type; } ;
struct uniform_info {int enabled; TYPE_4__ result; TYPE_2__ lookup; int type; int count; int location; } ;
struct TYPE_14__ {int id; } ;
struct TYPE_21__ {float width; int height; TYPE_1__ pipeline; int * matrix_data; struct video_coords* coords; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_8__ menu_display_ctx_draw_t ;
struct TYPE_22__ {int shader_data; TYPE_5__* shader; } ;
typedef TYPE_9__ gl_t ;
struct TYPE_18__ {int (* set_uniform_parameter ) (int ,struct uniform_info*,int *) ;int (* use ) (TYPE_9__*,int ,int,int) ;} ;


 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int SHADER_PROGRAM_VERTEX ;
 int UNIFORM_1F ;
 int UNIFORM_2F ;






 int glBlendFunc (int ,int ) ;
 TYPE_7__* menu_display_get_coords_array () ;
 int stub1 (TYPE_9__*,int ,int,int) ;
 int stub2 (int ,struct uniform_info*,int *) ;
 int stub3 (int ,struct uniform_info*,int *) ;

__attribute__((used)) static void menu_display_gl_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
}
