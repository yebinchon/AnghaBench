
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_info_t ;
struct string_list {size_t size; TYPE_2__* elems; } ;
struct TYPE_8__ {scalar_t__ video_hard_sync; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_11__ {scalar_t__ core_context_in_use; scalar_t__ renderchain_data; void* have_sync; void* support_unpack_row_length; void* have_es2_compat; void* have_mipmap; void* have_full_npot_support; } ;
typedef TYPE_4__ gl_t ;
typedef int gl2_renderchain_data_t ;
struct TYPE_9__ {char const* data; } ;
typedef scalar_t__ GLint ;


 int GL_CAPS_BGRA8888 ;
 int GL_CAPS_ES2_COMPAT ;
 int GL_CAPS_FULL_NPOT_SUPPORT ;
 int GL_CAPS_MIPMAP ;
 int GL_CAPS_SYNC ;
 int GL_CAPS_UNPACK_ROW_LENGTH ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int RARCH_LOG (char*,...) ;
 int RARCH_WARN (char*) ;
 TYPE_3__* config_get_ptr () ;
 int gl2_renderchain_resolve_extensions (TYPE_4__*,int *,char const*,int const*) ;
 int glGetIntegerv (int ,scalar_t__*) ;
 scalar_t__ glGetString (int ) ;
 scalar_t__ glGetStringi (int ,scalar_t__) ;
 void* gl_check_capability (int ) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 int video_driver_set_rgba () ;
 int video_driver_unset_rgba () ;

__attribute__((used)) static bool gl2_resolve_extensions(gl_t *gl, const char *context_ident, const video_info_t *video)
{
   settings_t *settings = config_get_ptr();
   gl->have_full_npot_support = gl_check_capability(GL_CAPS_FULL_NPOT_SUPPORT);
   gl->have_mipmap = gl_check_capability(GL_CAPS_MIPMAP);
   gl->have_es2_compat = gl_check_capability(GL_CAPS_ES2_COMPAT);
   gl->support_unpack_row_length = gl_check_capability(GL_CAPS_UNPACK_ROW_LENGTH);
   gl->have_sync = gl_check_capability(GL_CAPS_SYNC);

   if (gl->have_sync && settings->bools.video_hard_sync)
      RARCH_LOG("[GL]: Using ARB_sync to reduce latency.\n");

   video_driver_unset_rgba();

   gl2_renderchain_resolve_extensions(gl,
         (gl2_renderchain_data_t*)gl->renderchain_data,
         context_ident, video);
   return 1;
}
