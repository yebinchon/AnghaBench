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
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_FORMAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Ligature ; 
 int /*<<< orphan*/  LigatureSet ; 
 int /*<<< orphan*/  LigatureSubstFormat1 ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                              OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   SubstFormat;


    FUNC2( "LigatureSubst" );

    FUNC1( 2 );
    SubstFormat = FUNC0( p );

    FUNC5(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:
      FUNC3( LigatureSubstFormat1, LigatureSet, Ligature );
      FUNC4( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }