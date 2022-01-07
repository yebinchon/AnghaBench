
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt32 ;
typedef int FT_Int ;
typedef scalar_t__ FT_Fixed ;


 int FT_TRIG_SCALE ;

__attribute__((used)) static FT_Fixed
  ft_trig_downscale( FT_Fixed val )
  {
    FT_Int s = 1;
    FT_UInt32 lo1, hi1, lo2, hi2, lo, hi, i1, i2;


    if ( val < 0 )
    {
       val = -val;
       s = -1;
    }

    lo1 = (FT_UInt32)val & 0x0000FFFFU;
    hi1 = (FT_UInt32)val >> 16;
    lo2 = FT_TRIG_SCALE & 0x0000FFFFU;
    hi2 = FT_TRIG_SCALE >> 16;

    lo = lo1 * lo2;
    i1 = lo1 * hi2;
    i2 = lo2 * hi1;
    hi = hi1 * hi2;


    i1 += i2;
    hi += (FT_UInt32)( i1 < i2 ) << 16;

    hi += i1 >> 16;
    i1 = i1 << 16;


    lo += i1;
    hi += ( lo < i1 );





    lo += 0x40000000UL;
    hi += ( lo < 0x40000000UL );

    val = (FT_Fixed)hi;

    return s < 0 ? -val : val;
  }
