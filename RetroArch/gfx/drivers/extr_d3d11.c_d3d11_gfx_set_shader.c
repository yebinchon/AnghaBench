
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_9__ ;
typedef struct TYPE_55__ TYPE_8__ ;
typedef struct TYPE_54__ TYPE_7__ ;
typedef struct TYPE_53__ TYPE_6__ ;
typedef struct TYPE_52__ TYPE_5__ ;
typedef struct TYPE_51__ TYPE_4__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_28__ ;
typedef struct TYPE_47__ TYPE_25__ ;
typedef struct TYPE_46__ TYPE_24__ ;
typedef struct TYPE_45__ TYPE_22__ ;
typedef struct TYPE_44__ TYPE_21__ ;
typedef struct TYPE_43__ TYPE_20__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_19__ ;
typedef struct TYPE_40__ TYPE_18__ ;
typedef struct TYPE_39__ TYPE_17__ ;
typedef struct TYPE_38__ TYPE_16__ ;
typedef struct TYPE_37__ TYPE_15__ ;
typedef struct TYPE_36__ TYPE_14__ ;
typedef struct TYPE_35__ TYPE_13__ ;
typedef struct TYPE_34__ TYPE_12__ ;
typedef struct TYPE_33__ TYPE_11__ ;
typedef struct TYPE_32__ TYPE_10__ ;


typedef int vs_path ;
struct video_shader {unsigned int passes; unsigned int luts; TYPE_14__* lut; TYPE_12__* pass; } ;
struct texture_image {int supports_rgba; int pixels; int height; int width; int member_0; } ;
struct TYPE_56__ {int * member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
struct TYPE_55__ {int member_1; int member_3; int * member_2; int * member_0; } ;
struct TYPE_53__ {int member_1; int member_3; int * member_2; int * member_0; } ;
struct TYPE_52__ {int member_1; int member_3; int * member_2; int * member_0; } ;
struct TYPE_51__ {int member_1; int member_3; int * member_2; int * member_0; } ;
struct TYPE_50__ {int member_3; int * member_2; int member_1; int * member_0; } ;
struct TYPE_49__ {int member_3; int * member_2; int member_1; int * member_0; } ;
struct TYPE_42__ {TYPE_8__ member_5; TYPE_6__ member_4; TYPE_5__ member_3; TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_40__ {TYPE_9__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_18__ semantics_map_t ;
typedef int ps_path ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
struct TYPE_38__ {int output_size; TYPE_20__* texture; } ;
struct TYPE_41__ {int resize_render_targets; int init_history; struct video_shader* shader_preset; TYPE_25__* luts; int context; int device; TYPE_17__* pass; TYPE_16__ frame; int mvp; } ;
typedef TYPE_19__ d3d11_video_t ;
struct TYPE_43__ {int size_data; int view; } ;
typedef TYPE_20__ d3d11_texture_t ;
typedef int config_file_t ;
struct TYPE_54__ {int size_data; int view; } ;
struct TYPE_48__ {int ps; int vs; } ;
struct TYPE_37__ {int MiscFlags; int Format; int Height; int Width; } ;
struct TYPE_47__ {TYPE_15__ desc; int size_data; int view; } ;
struct TYPE_46__ {TYPE_13__* cbuffers; } ;
struct TYPE_45__ {int ByteWidth; scalar_t__ StructureByteStride; scalar_t__ MiscFlags; int CPUAccessFlags; int BindFlags; int Usage; } ;
struct TYPE_44__ {char* member_0; int member_1; int member_6; int const member_5; int member_4; int member_3; int const member_2; } ;
struct TYPE_39__ {int * buffers; TYPE_24__ semantics; TYPE_28__ shader; int frame_direction; int frame_count; TYPE_20__ rt; TYPE_7__ feedback; } ;
struct TYPE_36__ {scalar_t__ mipmap; int path; } ;
struct TYPE_35__ {int size; } ;
struct TYPE_32__ {char* vertex; char* fragment; } ;
struct TYPE_33__ {char* path; TYPE_10__ string; } ;
struct TYPE_34__ {TYPE_11__ source; } ;
typedef int FILE ;
typedef TYPE_21__ D3D11_INPUT_ELEMENT_DESC ;
typedef TYPE_22__ D3D11_BUFFER_DESC ;


 int D3D11CreateBuffer (int ,TYPE_22__*,int *,int *) ;
 int D3D11Flush (int ) ;
 int D3D11_BIND_CONSTANT_BUFFER ;
 int D3D11_CPU_ACCESS_WRITE ;

 int D3D11_RESOURCE_MISC_GENERATE_MIPS ;
 int D3D11_USAGE_DYNAMIC ;

 int DXGI_FORMAT_R8G8B8A8_UNORM ;
 int PATH_MAX_LENGTH ;
 int RARCH_SHADER_HLSL ;
 int RARCH_SHADER_SLANG ;
 int RARCH_WARN (char*) ;
 unsigned int SLANG_CBUFFER_MAX ;
 scalar_t__ calloc (int,int) ;
 int config_file_free (int *) ;
 int countof (TYPE_21__ const*) ;
 int d3d11_free_shader_preset (TYPE_19__*) ;
 int d3d11_init_shader (int ,char const*,int ,char*,char*,char*,int *,TYPE_21__ const*,int ,TYPE_28__*) ;
 int d3d11_init_texture (int ,TYPE_25__*) ;
 int d3d11_update_texture (int ,int ,int ,int ,int ,int ,TYPE_25__*) ;

 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fwrite (char const*,int,int ,int *) ;
 int image_texture_free (struct texture_image*) ;
 int image_texture_load (struct texture_image*,int ) ;
 int offsetof (int const,int ) ;

 int slang_process (struct video_shader*,unsigned int,int ,int,TYPE_18__*,TYPE_24__*) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

 int video_shader_read_conf_preset (int *,struct video_shader*) ;
 int * video_shader_read_preset (char const*) ;
 int video_shader_resolve_current_parameters (int *,struct video_shader*) ;

__attribute__((used)) static bool d3d11_gfx_set_shader(void* data, enum rarch_shader_type type, const char* path)
{
   return 0;
}
