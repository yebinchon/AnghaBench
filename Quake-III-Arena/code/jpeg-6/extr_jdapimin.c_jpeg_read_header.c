
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef int boolean ;
struct TYPE_6__ {scalar_t__ global_state; } ;


 scalar_t__ DSTATE_INHEADER ;
 scalar_t__ DSTATE_START ;
 int ERREXIT (TYPE_1__*,int ) ;
 int ERREXIT1 (TYPE_1__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JERR_NO_IMAGE ;
 int JPEG_HEADER_OK ;
 int JPEG_HEADER_TABLES_ONLY ;



 int jpeg_abort (int ) ;
 int jpeg_consume_input (TYPE_1__*) ;

int
jpeg_read_header (j_decompress_ptr cinfo, boolean require_image)
{
  int retcode;

  if (cinfo->global_state != DSTATE_START &&
      cinfo->global_state != DSTATE_INHEADER)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  retcode = jpeg_consume_input(cinfo);

  switch (retcode) {
  case 129:
    retcode = JPEG_HEADER_OK;
    break;
  case 130:
    if (require_image)
      ERREXIT(cinfo, JERR_NO_IMAGE);




    jpeg_abort((j_common_ptr) cinfo);
    retcode = JPEG_HEADER_TABLES_ONLY;
    break;
  case 128:

    break;
  }

  return retcode;
}
