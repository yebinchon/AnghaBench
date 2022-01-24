#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int extra2; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  BaseArray ; 
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MarkBasePosFormat1 ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                            OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   PosFormat;


    FUNC2( "MarkBasePos" );

    FUNC1( 2 );
    PosFormat = FUNC0( p );

    FUNC5(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:
      otvalid->extra2 = 1;
      FUNC3( MarkBasePosFormat1, BaseArray );
      FUNC4( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }