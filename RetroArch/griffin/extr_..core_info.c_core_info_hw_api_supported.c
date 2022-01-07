
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int version ;
typedef int minor_str ;
typedef int major_str ;
struct TYPE_9__ {int flags; int member_0; } ;
typedef TYPE_3__ gfx_ctx_flags_t ;
typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;
typedef enum compare_op { ____Placeholder_compare_op } compare_op ;
typedef enum api_parse_state { ____Placeholder_api_parse_state } api_parse_state ;
struct TYPE_10__ {TYPE_2__* required_hw_api_list; } ;
typedef TYPE_4__ core_info_t ;
struct TYPE_8__ {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_7__ {char* data; } ;


 int COMPARE_OP_EQUAL ;
 int COMPARE_OP_GREATER ;
 int COMPARE_OP_GREATER_EQUAL ;
 int COMPARE_OP_LESS ;
 int COMPARE_OP_LESS_EQUAL ;
 int COMPARE_OP_NOT_EQUAL ;
 int GFX_CTX_DIRECT3D10_API ;
 int GFX_CTX_DIRECT3D11_API ;
 int GFX_CTX_DIRECT3D12_API ;
 int GFX_CTX_DIRECT3D8_API ;
 int GFX_CTX_DIRECT3D9_API ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;
 int GFX_CTX_METAL_API ;
 int GFX_CTX_OPENGL_API ;
 int GFX_CTX_OPENGL_ES_API ;
 int GFX_CTX_VULKAN_API ;
 scalar_t__ core_info_compare_api_version (int,int,int,int,int) ;
 int fflush (int ) ;
 int islower (char const) ;
 int isupper (char const) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int,int) ;
 int sscanf (char const*,char*,int*,...) ;
 int stdout ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal_noncase (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 int video_context_driver_get_api () ;
 int video_context_driver_get_flags (TYPE_3__*) ;
 char* video_driver_get_gpu_api_version_string () ;

bool core_info_hw_api_supported(core_info_t *info)
{
   return 1;

}
