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
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ FTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  LISTING_DIR ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(FTPContext *s)
{
    int ret;
    s->state = LISTING_DIR;

    if ((ret = FUNC0(s)) < 0)
        ret = FUNC1(s);

    return ret;
}