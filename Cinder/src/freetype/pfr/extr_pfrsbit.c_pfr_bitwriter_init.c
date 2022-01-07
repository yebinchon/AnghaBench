
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buffer; int pitch; int width; int rows; } ;
struct TYPE_5__ {int line; int pitch; int width; int rows; int total; } ;
typedef TYPE_1__* PFR_BitWriter ;
typedef int FT_Int ;
typedef int FT_Bool ;
typedef TYPE_2__ FT_Bitmap ;



__attribute__((used)) static void
  pfr_bitwriter_init( PFR_BitWriter writer,
                      FT_Bitmap* target,
                      FT_Bool decreasing )
  {
    writer->line = target->buffer;
    writer->pitch = target->pitch;
    writer->width = target->width;
    writer->rows = target->rows;
    writer->total = writer->width * writer->rows;

    if ( !decreasing )
    {
      writer->line += writer->pitch * (FT_Int)( target->rows - 1 );
      writer->pitch = -writer->pitch;
    }
  }
