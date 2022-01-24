#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  decoder_ref; int /*<<< orphan*/  idx_ref; } ;
typedef  TYPE_1__ NVDECFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 

__attribute__((used)) static void FUNC2(void *priv)
{
    NVDECFrame *cf = priv;

    if (!cf)
        return;

    FUNC0(&cf->idx_ref);
    FUNC0(&cf->decoder_ref);

    FUNC1(&priv);
}