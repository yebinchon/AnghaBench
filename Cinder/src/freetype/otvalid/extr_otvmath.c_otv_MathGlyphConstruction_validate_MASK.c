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
struct TYPE_4__ {int glyph_count; } ;
typedef  TYPE_1__* OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_GLYPH_ID ; 
 int FUNC0 (int) ; 
 int GlyphAssembly ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                                      OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   vcnt, table_size;
    FT_UInt   i;

    FUNC3( GlyphAssembly );


    /* OTV_NAME_ENTER( "MathGlyphConstruction" ); */

    FUNC1( 4 );

    FUNC2( GlyphAssembly );
    vcnt = FUNC0( p );

    FUNC1( 4 * vcnt );
    table_size = 4 + 4 * vcnt;

    for ( i = 0; i < vcnt; i++ )
    {
      FT_UInt  gid;


      gid = FUNC0( p );
      if ( gid >= otvalid->glyph_count )
        FT_INVALID_GLYPH_ID;
      p += 2;                          /* skip the size */
    }

    FUNC4( GlyphAssembly );
    if ( GlyphAssembly )
      FUNC5( table+GlyphAssembly, otvalid );

    /* OTV_EXIT; */
  }