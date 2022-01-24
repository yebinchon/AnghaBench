#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ optdata; } ;
struct TYPE_7__ {scalar_t__ min_gid; scalar_t__ max_gid; TYPE_1__ statetable; } ;
struct TYPE_6__ {int substitutionTable_length; } ;
typedef  TYPE_2__ GXV_mort_subtable_type1_StateOptRec ;
typedef  TYPE_3__* GXV_Validator ;
typedef  scalar_t__ FT_UShort ;
typedef  int /*<<< orphan*/  FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_GLYPH_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
  FUNC5( FT_Bytes       table,
                                               FT_Bytes       limit,
                                               GXV_Validator  gxvalid )
  {
    FT_Bytes   p = table;
    FT_UShort  num_gids = (FT_UShort)(
                 ((GXV_mort_subtable_type1_StateOptRec *)
                  (gxvalid->statetable.optdata))->substitutionTable_length / 2 );
    FT_UShort  i;


    FUNC2( "validating contents of substitutionTable" );
    for ( i = 0; i < num_gids; i++ )
    {
      FT_UShort  dst_gid;


      FUNC1( 2 );
      dst_gid = FUNC0( p );

      if ( dst_gid >= 0xFFFFU )
        continue;

      if ( dst_gid < gxvalid->min_gid || gxvalid->max_gid < dst_gid )
      {
        FUNC4(( "substTable include a strange gid[%d]=%d >"
                    " out of define range (%d..%d)\n",
                    i, dst_gid, gxvalid->min_gid, gxvalid->max_gid ));
        FUNC3( FT_INVALID_GLYPH_ID );
      }
    }

    GXV_EXIT;
  }