#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* prot; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_11__ {TYPE_2__* url_context; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* url_close_dir ) (TYPE_2__*) ;} ;
typedef  TYPE_3__ AVIODirContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(AVIODirContext **s)
{
    URLContext *h;

    FUNC1(s);
    if (!(*s) || !(*s)->url_context)
        return FUNC0(EINVAL);
    h = (*s)->url_context;
    h->prot->url_close_dir(h);
    FUNC3(h);
    FUNC2(s);
    *s = NULL;
    return 0;
}