
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* j_compress_ptr ;
struct TYPE_5__ {int in_color_space; } ;


 int ERREXIT (TYPE_1__*,int ) ;






 int JERR_BAD_IN_COLORSPACE ;
 int jpeg_set_colorspace (TYPE_1__*,int const) ;

void
jpeg_default_colorspace (j_compress_ptr cinfo)
{
  switch (cinfo->in_color_space) {
  case 132:
    jpeg_set_colorspace(cinfo, 132);
    break;
  case 131:
    jpeg_set_colorspace(cinfo, 128);
    break;
  case 128:
    jpeg_set_colorspace(cinfo, 128);
    break;
  case 133:
    jpeg_set_colorspace(cinfo, 133);
    break;
  case 129:
    jpeg_set_colorspace(cinfo, 129);
    break;
  case 130:
    jpeg_set_colorspace(cinfo, 130);
    break;
  default:
    ERREXIT(cinfo, JERR_BAD_IN_COLORSPACE);
  }
}
