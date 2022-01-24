#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OTV_Validator ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Int ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int EntryAnchor ; 
 int ExitAnchor ; 
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC9( FT_Bytes       table,
                           OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   PosFormat;


    FUNC2( "CursivePos" );

    FUNC1( 2 );
    PosFormat = FUNC0( p );

    FUNC6(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:     /* CursivePosFormat1 */
      {
        FT_UInt   table_size;
        FT_UInt   Coverage, EntryExitCount;

        FUNC4( EntryAnchor );
        FUNC4( ExitAnchor  );


        FUNC1( 4 );
        Coverage       = FUNC0( p );
        EntryExitCount = FUNC0( p );

        FUNC6(( " (EntryExitCount = %d)\n", EntryExitCount ));

        FUNC8( table + Coverage,
                               otvalid,
                               (FT_Int)EntryExitCount );

        FUNC1( EntryExitCount * 4 );

        table_size = EntryExitCount * 4 + 4;

        /* EntryExitRecord */
        for ( ; EntryExitCount > 0; EntryExitCount-- )
        {
          FUNC3( EntryAnchor );
          FUNC3( ExitAnchor  );

          FUNC5( EntryAnchor );
          if ( EntryAnchor )
            FUNC7( table + EntryAnchor, otvalid );

          FUNC5( ExitAnchor );
          if ( ExitAnchor )
            FUNC7( table + ExitAnchor, otvalid );
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }