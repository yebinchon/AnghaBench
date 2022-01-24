#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lookupfmt4_trans; int /*<<< orphan*/  lookupval_func; int /*<<< orphan*/  lookupval_sign; } ;
typedef  TYPE_1__* GXV_Validator ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int GXV_BSLN_VALUE_COUNT ; 
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  GXV_LOOKUPVALUE_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  gxv_bsln_LookupFmt4_transit ; 
 int /*<<< orphan*/  gxv_bsln_LookupValue_validate ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
  FUNC3( FT_Bytes       tables,
                                FT_Bytes       limit,
                                GXV_Validator  gxvalid)
  {
    FT_Bytes  p = tables;


    FUNC0( "parts format 3" );

    /* stdGlyph + ctlPoints */
    FUNC2( p, limit, gxvalid );

    /* mappingData */
    gxvalid->lookupval_sign   = GXV_LOOKUPVALUE_UNSIGNED;
    gxvalid->lookupval_func   = gxv_bsln_LookupValue_validate;
    gxvalid->lookupfmt4_trans = gxv_bsln_LookupFmt4_transit;
    FUNC1( p + ( 2 + 2 * GXV_BSLN_VALUE_COUNT ),
                              limit,
                              gxvalid );

    GXV_EXIT;
  }