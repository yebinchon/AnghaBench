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
struct TYPE_4__ {int /*<<< orphan*/  priv_key; int /*<<< orphan*/  pub_key; int /*<<< orphan*/  g; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ FF_DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(FF_DH *dh)
{
    if (!dh)
        return;
    FUNC1(dh->p);
    FUNC1(dh->g);
    FUNC1(dh->pub_key);
    FUNC1(dh->priv_key);
    FUNC0(dh);
}