#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  subtable_length; TYPE_1__* root; } ;
struct TYPE_9__ {scalar_t__ base; } ;
typedef  TYPE_2__* GXV_Validator ;
typedef  scalar_t__ FT_UShort ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  odtect ; 

__attribute__((used)) static void
  FUNC12( FT_Bytes       table,
                              FT_Bytes       limit,
                              GXV_Validator  gxvalid )
  {
    /*
     * following 3 offsets are measured from the start of `just'
     * (which table points to), not justData
     */
    FT_UShort  justClassTableOffset;
    FT_UShort  wdcTableOffset;
    FT_UShort  pcTableOffset;
    FT_Bytes   p = table;

    FUNC3( 4, odtect );


    FUNC2( "just justData" );

    FUNC4( odtect );
    FUNC1( 2 + 2 + 2 );
    justClassTableOffset = FUNC0( p );
    wdcTableOffset       = FUNC0( p );
    pcTableOffset        = FUNC0( p );

    FUNC5(( " (justClassTableOffset = 0x%04x)\n", justClassTableOffset ));
    FUNC5(( " (wdcTableOffset = 0x%04x)\n", wdcTableOffset ));
    FUNC5(( " (pcTableOffset = 0x%04x)\n", pcTableOffset ));

    FUNC7( p, limit, gxvalid );
    FUNC10( p, gxvalid->subtable_length,
                          "just_LookupTable", odtect );

    if ( wdcTableOffset )
    {
      FUNC9(
        gxvalid->root->base + wdcTableOffset, limit, gxvalid );
      FUNC10( gxvalid->root->base + wdcTableOffset,
                            gxvalid->subtable_length, "just_wdcTable", odtect );
    }

    if ( pcTableOffset )
    {
      FUNC8( gxvalid->root->base + pcTableOffset,
                                       limit, gxvalid );
      FUNC10( gxvalid->root->base + pcTableOffset,
                            gxvalid->subtable_length, "just_pcTable", odtect );
    }

    if ( justClassTableOffset )
    {
      FUNC6(
        gxvalid->root->base + justClassTableOffset, limit, gxvalid );
      FUNC10( gxvalid->root->base + justClassTableOffset,
                            gxvalid->subtable_length, "just_justClassTable",
                            odtect );
    }

    FUNC11( odtect, gxvalid );

    GXV_EXIT;
  }