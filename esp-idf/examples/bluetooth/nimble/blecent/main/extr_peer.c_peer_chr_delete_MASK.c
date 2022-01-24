#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct peer_dsc {int /*<<< orphan*/  dscs; } ;
struct peer_chr {int /*<<< orphan*/  dscs; } ;

/* Variables and functions */
 struct peer_dsc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct peer_dsc*) ; 
 int /*<<< orphan*/  peer_chr_pool ; 
 int /*<<< orphan*/  peer_dsc_pool ; 

__attribute__((used)) static void
FUNC3(struct peer_chr *chr)
{
    struct peer_dsc *dsc;

    while ((dsc = FUNC0(&chr->dscs)) != NULL) {
        FUNC1(&chr->dscs, next);
        FUNC2(&peer_dsc_pool, dsc);
    }

    FUNC2(&peer_chr_pool, chr);
}