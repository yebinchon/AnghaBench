
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ width; scalar_t__ total; scalar_t__* line; int pitch; } ;
typedef TYPE_1__* PFR_BitWriter ;
typedef scalar_t__ FT_UInt ;
typedef scalar_t__ FT_Int ;
typedef scalar_t__ FT_Byte ;



__attribute__((used)) static void
  pfr_bitwriter_decode_rle2( PFR_BitWriter writer,
                             FT_Byte* p,
                             FT_Byte* limit )
  {
    FT_Int phase, count;
    FT_UInt n, reload;
    FT_UInt left = writer->width;
    FT_Byte* cur = writer->line;
    FT_UInt mask = 0x80;
    FT_UInt c = 0;


    n = writer->total;

    phase = 1;
    count = 0;
    reload = 1;

    for ( ; n > 0; n-- )
    {
      if ( reload )
      {
        do
        {
          if ( p >= limit )
            break;

          count = *p++;
          phase = phase ^ 1;

        } while ( count == 0 );
      }

      if ( phase )
        c |= mask;

      mask >>= 1;

      if ( --left <= 0 )
      {
        cur[0] = (FT_Byte)c;
        c = 0;
        mask = 0x80;
        left = writer->width;

        writer->line += writer->pitch;
        cur = writer->line;
      }
      else if ( mask == 0 )
      {
        cur[0] = (FT_Byte)c;
        c = 0;
        mask = 0x80;
        cur++;
      }

      reload = ( --count <= 0 );
    }

    if ( mask != 0x80 )
      cur[0] = (FT_Byte) c;
  }
