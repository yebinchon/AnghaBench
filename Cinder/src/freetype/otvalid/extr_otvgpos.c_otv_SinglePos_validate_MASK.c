#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int extra3; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Int ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,TYPE_1__*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void
  FUNC7( FT_Bytes       table,
                          OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   PosFormat;


    FUNC2( "SinglePos" );

    FUNC1( 2 );
    PosFormat = FUNC0( p );

    FUNC3(( " (format %d)\n", PosFormat ));

    otvalid->extra3 = table;

    switch ( PosFormat )
    {
    case 1:     /* SinglePosFormat1 */
      {
        FT_UInt  Coverage, ValueFormat;


        FUNC1( 4 );
        Coverage    = FUNC0( p );
        ValueFormat = FUNC0( p );

        FUNC4( table + Coverage, otvalid, -1 );
        FUNC5( p, ValueFormat, otvalid ); /* Value */
      }
      break;

    case 2:     /* SinglePosFormat2 */
      {
        FT_UInt  Coverage, ValueFormat, ValueCount, len_value;


        FUNC1( 6 );
        Coverage    = FUNC0( p );
        ValueFormat = FUNC0( p );
        ValueCount  = FUNC0( p );

        FUNC3(( " (ValueCount = %d)\n", ValueCount ));

        len_value = FUNC6( ValueFormat );

        FUNC4( table + Coverage,
                               otvalid,
                               (FT_Int)ValueCount );

        FUNC1( ValueCount * len_value );

        /* Value */
        for ( ; ValueCount > 0; ValueCount-- )
        {
          FUNC5( p, ValueFormat, otvalid );
          p += len_value;
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }