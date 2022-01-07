
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct jpeg_color_deconverter {int dummy; } ;
typedef TYPE_4__* my_cconvert_ptr ;
typedef TYPE_5__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_13__ {int jpeg_color_space; int num_components; int out_color_space; int out_color_components; int output_components; scalar_t__ quantize_colors; TYPE_2__* comp_info; struct jpeg_color_deconverter* cconvert; TYPE_1__* mem; } ;
struct TYPE_11__ {void* color_convert; int start_pass; } ;
struct TYPE_12__ {TYPE_3__ pub; } ;
struct TYPE_10__ {int component_needed; } ;
struct TYPE_9__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int ERREXIT (TYPE_5__*,int ) ;
 int FALSE ;





 int JERR_BAD_J_COLORSPACE ;
 int JERR_CONVERSION_NOTIMPL ;
 int JPOOL_IMAGE ;
 int RGB_PIXELSIZE ;
 int SIZEOF (int ) ;
 int build_ycc_rgb_table (TYPE_5__*) ;
 void* grayscale_convert ;
 int my_color_deconverter ;
 void* null_convert ;
 int start_pass_dcolor ;
 scalar_t__ stub1 (int ,int ,int ) ;
 void* ycc_rgb_convert ;
 void* ycck_cmyk_convert ;

void
jinit_color_deconverter (j_decompress_ptr cinfo)
{
  my_cconvert_ptr cconvert;
  int ci;

  cconvert = (my_cconvert_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_color_deconverter));
  cinfo->cconvert = (struct jpeg_color_deconverter *) cconvert;
  cconvert->pub.start_pass = start_pass_dcolor;


  switch (cinfo->jpeg_color_space) {
  case 131:
    if (cinfo->num_components != 1)
      ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
    break;

  case 130:
  case 128:
    if (cinfo->num_components != 3)
      ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
    break;

  case 132:
  case 129:
    if (cinfo->num_components != 4)
      ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
    break;

  default:
    if (cinfo->num_components < 1)
      ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
    break;
  }






  switch (cinfo->out_color_space) {
  case 131:
    cinfo->out_color_components = 1;
    if (cinfo->jpeg_color_space == 131 ||
 cinfo->jpeg_color_space == 128) {
      cconvert->pub.color_convert = grayscale_convert;

      for (ci = 1; ci < cinfo->num_components; ci++)
 cinfo->comp_info[ci].component_needed = FALSE;
    } else
      ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
    break;

  case 130:
    cinfo->out_color_components = RGB_PIXELSIZE;
    if (cinfo->jpeg_color_space == 128) {
      cconvert->pub.color_convert = ycc_rgb_convert;
      build_ycc_rgb_table(cinfo);
    } else if (cinfo->jpeg_color_space == 130 && RGB_PIXELSIZE == 3) {
      cconvert->pub.color_convert = null_convert;
    } else
      ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
    break;

  case 132:
    cinfo->out_color_components = 4;
    if (cinfo->jpeg_color_space == 129) {
      cconvert->pub.color_convert = ycck_cmyk_convert;
      build_ycc_rgb_table(cinfo);
    } else if (cinfo->jpeg_color_space == 132) {
      cconvert->pub.color_convert = null_convert;
    } else
      ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
    break;

  default:

    if (cinfo->out_color_space == cinfo->jpeg_color_space) {
      cinfo->out_color_components = cinfo->num_components;
      cconvert->pub.color_convert = null_convert;
    } else
      ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
    break;
  }

  if (cinfo->quantize_colors)
    cinfo->output_components = 1;
  else
    cinfo->output_components = cinfo->out_color_components;
}
