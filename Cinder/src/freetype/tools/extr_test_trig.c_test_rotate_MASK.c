#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double x; double y; } ;
typedef  TYPE_1__ FT_Vector ;
typedef  double FT_Fixed ;

/* Variables and functions */
 int FT_ANGLE_2PI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int SPI ; 
 scalar_t__ THRESHOLD ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (double) ; 
 int error ; 
 int /*<<< orphan*/  FUNC3 (char*,double,double,double,double,double,double,double) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static void
  FUNC5( void )
  {
    int  rotate;


    for ( rotate = 0; rotate < FT_ANGLE_2PI; rotate += 0x10000L )
    {
      double  ra, cra, sra;
      int     i;


      ra  = rotate*SPI;
      cra = FUNC2( ra );
      sra = FUNC4( ra );

      for ( i = 0; i < FT_ANGLE_2PI; i += 0x10000L )
      {
        FT_Fixed   c2, s2, c4, s4;
        FT_Vector  v;
        double     l, a, c1, s1, c3, s3;


        l  = 500.0;
        a  = i*SPI;

        c1 = l * FUNC2(a);
        s1 = l * FUNC4(a);

        v.x = c2 = (FT_Fixed)(c1*65536.0);
        v.y = s2 = (FT_Fixed)(s1*65536.0);

        FUNC0( &v, rotate );

        c3 = c1 * cra - s1 * sra;
        s3 = c1 * sra + s1 * cra;

        c4 = (FT_Fixed)(c3*65536.0);
        s4 = (FT_Fixed)(s3*65536.0);

        if ( FUNC1( c4 - v.x ) > THRESHOLD ||
             FUNC1( s4 - v.y ) > THRESHOLD )
        {
          error = 1;
          FUNC3( "FT_Rotate( (%.7f,%.7f), %.5f ) = ( %.7f, %.7f ), rot = ( %.7f, %.7f )\n",
                  c1, s1, ra,
                  c2/65536.0, s2/65536.0,
                  c4/65536.0, s4/65536.0 );
        }
      }
    }
  }