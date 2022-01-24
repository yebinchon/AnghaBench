#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int extra3; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,TYPE_1__*) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void
  FUNC9( FT_Bytes       table,
                        OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   PosFormat;


    FUNC2( "PairPos" );

    FUNC1( 2 );
    PosFormat = FUNC0( p );

    FUNC3(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:     /* PairPosFormat1 */
      {
        FT_UInt  Coverage, ValueFormat1, ValueFormat2, PairSetCount;


        FUNC1( 8 );
        Coverage     = FUNC0( p );
        ValueFormat1 = FUNC0( p );
        ValueFormat2 = FUNC0( p );
        PairSetCount = FUNC0( p );

        FUNC3(( " (PairSetCount = %d)\n", PairSetCount ));

        FUNC5( table + Coverage, otvalid, -1 );

        FUNC1( PairSetCount * 2 );

        /* PairSetOffset */
        for ( ; PairSetCount > 0; PairSetCount-- )
          FUNC6( table + FUNC0( p ),
                                ValueFormat1, ValueFormat2, otvalid );
      }
      break;

    case 2:     /* PairPosFormat2 */
      {
        FT_UInt  Coverage, ValueFormat1, ValueFormat2, ClassDef1, ClassDef2;
        FT_UInt  ClassCount1, ClassCount2, len_value1, len_value2, count;


        FUNC1( 14 );
        Coverage     = FUNC0( p );
        ValueFormat1 = FUNC0( p );
        ValueFormat2 = FUNC0( p );
        ClassDef1    = FUNC0( p );
        ClassDef2    = FUNC0( p );
        ClassCount1  = FUNC0( p );
        ClassCount2  = FUNC0( p );

        FUNC3(( " (ClassCount1 = %d)\n", ClassCount1 ));
        FUNC3(( " (ClassCount2 = %d)\n", ClassCount2 ));

        len_value1 = FUNC8( ValueFormat1 );
        len_value2 = FUNC8( ValueFormat2 );

        FUNC5( table + Coverage, otvalid, -1 );
        FUNC4( table + ClassDef1, otvalid );
        FUNC4( table + ClassDef2, otvalid );

        FUNC1( ClassCount1 * ClassCount2 *
                         ( len_value1 + len_value2 ) );

        otvalid->extra3 = table;

        /* Class1Record */
        for ( ; ClassCount1 > 0; ClassCount1-- )
        {
          /* Class2Record */
          for ( count = ClassCount2; count > 0; count-- )
          {
            if ( ValueFormat1 )
              /* Value1 */
              FUNC7( p, ValueFormat1, otvalid );
            p += len_value1;

            if ( ValueFormat2 )
              /* Value2 */
              FUNC7( p, ValueFormat2, otvalid );
            p += len_value2;
          }
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }