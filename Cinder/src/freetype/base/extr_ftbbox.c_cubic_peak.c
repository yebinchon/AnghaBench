
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt32 ;
typedef int FT_Pos ;
typedef int FT_Int ;


 int FT_ABS (int) ;
 int FT_MSB (int ) ;

__attribute__((used)) static FT_Pos
  cubic_peak( FT_Pos q1,
              FT_Pos q2,
              FT_Pos q3,
              FT_Pos q4 )
  {
    FT_Pos peak = 0;
    FT_Int shift;
    shift = 27 - FT_MSB( (FT_UInt32)( FT_ABS( q1 ) |
                                      FT_ABS( q2 ) |
                                      FT_ABS( q3 ) |
                                      FT_ABS( q4 ) ) );

    if ( shift > 0 )
    {

      if ( shift > 2 )
        shift = 2;

      q1 <<= shift;
      q2 <<= shift;
      q3 <<= shift;
      q4 <<= shift;
    }
    else
    {
      q1 >>= -shift;
      q2 >>= -shift;
      q3 >>= -shift;
      q4 >>= -shift;
    }



    while ( q2 > 0 || q3 > 0 )
    {

      if ( q1 + q2 > q3 + q4 )
      {
        q4 = q4 + q3;
        q3 = q3 + q2;
        q2 = q2 + q1;
        q4 = q4 + q3;
        q3 = q3 + q2;
        q4 = ( q4 + q3 ) / 8;
        q3 = q3 / 4;
        q2 = q2 / 2;
      }
      else
      {
        q1 = q1 + q2;
        q2 = q2 + q3;
        q3 = q3 + q4;
        q1 = q1 + q2;
        q2 = q2 + q3;
        q1 = ( q1 + q2 ) / 8;
        q2 = q2 / 4;
        q3 = q3 / 2;
      }


      if ( q1 == q2 && q1 >= q3 )
      {
        peak = q1;
        break;
      }
      if ( q3 == q4 && q2 <= q4 )
      {
        peak = q4;
        break;
      }
    }

    if ( shift > 0 )
      peak >>= shift;
    else
      peak <<= -shift;

    return peak;
  }
