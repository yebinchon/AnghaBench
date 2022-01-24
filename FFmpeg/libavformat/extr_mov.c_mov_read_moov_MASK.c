#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {int found_moov; int /*<<< orphan*/  fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  TYPE_2__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__) ; 

__attribute__((used)) static int FUNC3(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int ret;

    if (c->found_moov) {
        FUNC0(c->fc, AV_LOG_WARNING, "Found duplicated MOOV Atom. Skipped it\n");
        FUNC1(pb, atom.size);
        return 0;
    }

    if ((ret = FUNC2(c, pb, atom)) < 0)
        return ret;
    /* we parsed the 'moov' atom, we can terminate the parsing as soon as we find the 'mdat' */
    /* so we don't parse the whole file if over a network */
    c->found_moov=1;
    return 0; /* now go for mdat */
}