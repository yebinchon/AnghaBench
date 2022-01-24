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
struct peer_svc {int /*<<< orphan*/  chrs; } ;
struct peer_chr {int dummy; } ;

/* Variables and functions */
 struct peer_chr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct peer_svc*) ; 
 int /*<<< orphan*/  FUNC3 (struct peer_chr*) ; 
 int /*<<< orphan*/  peer_svc_pool ; 

__attribute__((used)) static void
FUNC4(struct peer_svc *svc)
{
    struct peer_chr *chr;

    while ((chr = FUNC0(&svc->chrs)) != NULL) {
        FUNC1(&svc->chrs, next);
        FUNC3(chr);
    }

    FUNC2(&peer_svc_pool, svc);
}