#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  entry_validate_func; int /*<<< orphan*/  entry_glyphoffset_fmt; int /*<<< orphan*/ * subtable_setup_func; int /*<<< orphan*/ * optdata_load_func; int /*<<< orphan*/ * optdata; } ;
struct TYPE_6__ {TYPE_1__ statetable; } ;
typedef  TYPE_2__* GXV_Validator ;
typedef  int FT_UShort ;
typedef  scalar_t__ FT_ULong ;
typedef  int FT_Bytes ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  GXV_GLYPHOFFSET_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  gxv_just_classTable_entry_validate ; 

__attribute__((used)) static void
  FUNC6 ( FT_Bytes       table,
                                     FT_Bytes       limit,
                                     GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;
    FT_UShort  length;
    FT_UShort  coverage;
    FT_ULong   subFeatureFlags;


    FUNC3( "just justClassTable" );

    FUNC2( 2 + 2 + 4 );
    length          = FUNC1( p );
    coverage        = FUNC1( p );
    subFeatureFlags = FUNC0( p );

    FUNC4(( "  justClassTable: coverage = 0x%04x (%s) ", coverage ));
    if ( ( coverage & 0x4000 ) == 0  )
      FUNC4(( "ascending\n" ));
    else
      FUNC4(( "descending\n" ));

    if ( subFeatureFlags )
      FUNC4(( "  justClassTable: nonzero value (0x%08x)"
                  " in unused subFeatureFlags\n", subFeatureFlags ));

    gxvalid->statetable.optdata               = NULL;
    gxvalid->statetable.optdata_load_func     = NULL;
    gxvalid->statetable.subtable_setup_func   = NULL;
    gxvalid->statetable.entry_glyphoffset_fmt = GXV_GLYPHOFFSET_NONE;
    gxvalid->statetable.entry_validate_func   =
      gxv_just_classTable_entry_validate;

    FUNC5( p, table + length, gxvalid );

    /* subtable_length is set by gxv_LookupTable_validate() */

    GXV_EXIT;
  }