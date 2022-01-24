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
struct TYPE_6__ {TYPE_1__* prot; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_5__ {int (* url_get_short_seek ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_2__*) ; 

int FUNC2(URLContext *h)
{
    if (!h || !h->prot || !h->prot->url_get_short_seek)
        return FUNC0(ENOSYS);
    return h->prot->url_get_short_seek(h);
}