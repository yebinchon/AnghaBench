
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* jpeg_marker_parser_method ;
typedef TYPE_2__* j_decompress_ptr ;
struct TYPE_6__ {TYPE_1__* marker; } ;
struct TYPE_5__ {void** process_APPn; void* process_COM; } ;


 int ERREXIT1 (TYPE_2__*,int ,int) ;
 int JERR_UNKNOWN_MARKER ;
 int JPEG_APP0 ;
 int JPEG_COM ;

void
jpeg_set_marker_processor (j_decompress_ptr cinfo, int marker_code,
      jpeg_marker_parser_method routine)
{
  if (marker_code == JPEG_COM)
    cinfo->marker->process_COM = routine;
  else if (marker_code >= JPEG_APP0 && marker_code <= JPEG_APP0+15)
    cinfo->marker->process_APPn[marker_code-JPEG_APP0] = routine;
  else
    ERREXIT1(cinfo, JERR_UNKNOWN_MARKER, marker_code);
}
