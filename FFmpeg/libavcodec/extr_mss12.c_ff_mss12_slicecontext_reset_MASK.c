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
struct TYPE_3__ {int /*<<< orphan*/  inter_pix_ctx; int /*<<< orphan*/  intra_pix_ctx; int /*<<< orphan*/  pivot; int /*<<< orphan*/  edge_mode; int /*<<< orphan*/  split_mode; int /*<<< orphan*/  inter_region; int /*<<< orphan*/  intra_region; } ;
typedef  TYPE_1__ SliceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(SliceContext *sc)
{
    FUNC0(&sc->intra_region);
    FUNC0(&sc->inter_region);
    FUNC0(&sc->split_mode);
    FUNC0(&sc->edge_mode);
    FUNC0(&sc->pivot);
    FUNC1(&sc->intra_pix_ctx);
    FUNC1(&sc->inter_pix_ctx);
}