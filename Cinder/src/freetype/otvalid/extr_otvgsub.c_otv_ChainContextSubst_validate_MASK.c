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
struct TYPE_4__ {int /*<<< orphan*/  lookup_count; int /*<<< orphan*/  extra1; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  ChainContextSubstFormat1 ; 
 int /*<<< orphan*/  ChainContextSubstFormat2 ; 
 int /*<<< orphan*/  ChainContextSubstFormat3 ; 
 int /*<<< orphan*/  ChainSubClassRule ; 
 int /*<<< orphan*/  ChainSubClassSet ; 
 int /*<<< orphan*/  ChainSubRule ; 
 int /*<<< orphan*/  ChainSubRuleSet ; 
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
  FUNC7( FT_Bytes       table,
                                  OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   SubstFormat;


    FUNC2( "ChainContextSubst" );

    FUNC1( 2 );
    SubstFormat = FUNC0( p );

    FUNC6(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:
      /* no need to check glyph indices/classes used as input for these */
      /* context rules since even invalid glyph indices/classes return  */
      /* meaningful results                                             */

      otvalid->extra1 = otvalid->lookup_count;
      FUNC4( ChainContextSubstFormat1,
                 ChainSubRuleSet, ChainSubRule );
      FUNC5( table, otvalid );
      break;

    case 2:
      /* no need to check glyph indices/classes used as input for these */
      /* context rules since even invalid glyph indices/classes return  */
      /* meaningful results                                             */

      FUNC4( ChainContextSubstFormat2,
                 ChainSubClassSet, ChainSubClassRule );
      FUNC5( table, otvalid );
      break;

    case 3:
      FUNC3( ChainContextSubstFormat3 );
      FUNC5( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }