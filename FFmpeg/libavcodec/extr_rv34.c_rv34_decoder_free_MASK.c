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
struct TYPE_3__ {int /*<<< orphan*/  deblock_coefs; int /*<<< orphan*/  cbp_chroma; int /*<<< orphan*/  cbp_luma; int /*<<< orphan*/  mb_type; int /*<<< orphan*/  tmp_b_block_base; int /*<<< orphan*/ * intra_types; int /*<<< orphan*/  intra_types_hist; } ;
typedef  TYPE_1__ RV34DecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(RV34DecContext *r)
{
    FUNC0(&r->intra_types_hist);
    r->intra_types = NULL;
    FUNC0(&r->tmp_b_block_base);
    FUNC0(&r->mb_type);
    FUNC0(&r->cbp_luma);
    FUNC0(&r->cbp_chroma);
    FUNC0(&r->deblock_coefs);
}