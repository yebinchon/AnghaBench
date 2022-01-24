#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ buffered; scalar_t__ autosync; int /*<<< orphan*/  fp; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef  TYPE_3__ rio ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void const*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(rio *r, const void *buf, size_t len) {
    size_t retval;

    retval = FUNC3(buf,len,1,r->io.file.fp);
    r->io.file.buffered += len;

    if (r->io.file.autosync &&
        r->io.file.buffered >= r->io.file.autosync)
    {
        FUNC1(r->io.file.fp);
        FUNC0(FUNC2(r->io.file.fp));
        r->io.file.buffered = 0;
    }
    return retval;
}