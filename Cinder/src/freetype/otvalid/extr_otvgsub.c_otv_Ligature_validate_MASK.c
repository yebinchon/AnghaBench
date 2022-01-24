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
struct TYPE_3__ {scalar_t__ glyph_count; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  scalar_t__ FT_UInt ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTV_ENTER ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
  FUNC3( FT_Bytes       table,
                         OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   LigatureGlyph, CompCount;


    OTV_ENTER;

    FUNC1( 4 );
    LigatureGlyph = FUNC0( p );
    if ( LigatureGlyph >= otvalid->glyph_count )
      FT_INVALID_DATA;

    CompCount = FUNC0( p );

    FUNC2(( " (CompCount = %d)\n", CompCount ));

    if ( CompCount == 0 )
      FT_INVALID_DATA;

    CompCount--;

    FUNC1( CompCount * 2 );     /* Component */

    /* no need to check the Component glyph indices */

    OTV_EXIT;
  }