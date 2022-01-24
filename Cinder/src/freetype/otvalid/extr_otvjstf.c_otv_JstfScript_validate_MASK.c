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
struct TYPE_4__ {int /*<<< orphan*/  glyph_count; int /*<<< orphan*/  extra1; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int DefJstfLangSys ; 
 int ExtGlyph ; 
 int /*<<< orphan*/  ExtenderGlyph ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  JstfLangSys ; 
 int /*<<< orphan*/  JstfPriority ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
  FUNC10( FT_Bytes       table,
                           OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   table_size;
    FT_UInt   JstfLangSysCount;

    FUNC6( ExtGlyph );
    FUNC6( DefJstfLangSys );


    FUNC2( "JstfScript" );

    FUNC1( 6 );
    FUNC5( ExtGlyph );
    FUNC5( DefJstfLangSys );
    JstfLangSysCount = FUNC0( p );

    FUNC9(( " (JstfLangSysCount = %d)\n", JstfLangSysCount ));

    table_size = JstfLangSysCount * 6 + 6;

    FUNC8( ExtGlyph );
    if ( ExtGlyph )
    {
      otvalid->extra1 = otvalid->glyph_count;
      FUNC3( ExtenderGlyph );
      FUNC7( table + ExtGlyph, otvalid );
    }

    FUNC8( DefJstfLangSys );
    if ( DefJstfLangSys )
    {
      FUNC4( JstfLangSys, JstfPriority );
      FUNC7( table + DefJstfLangSys, otvalid );
    }

    FUNC1( 6 * JstfLangSysCount );

    /* JstfLangSysRecord */
    FUNC4( JstfLangSys, JstfPriority );
    for ( ; JstfLangSysCount > 0; JstfLangSysCount-- )
    {
      p += 4;       /* skip JstfLangSysTag */

      FUNC7( table + FUNC0( p ), otvalid );
    }

    OTV_EXIT;
  }