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
struct TYPE_4__ {int size; scalar_t__ type; } ;
typedef  int /*<<< orphan*/  MOVContext ;
typedef  TYPE_1__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__) ; 

__attribute__((used)) static int FUNC5(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int err;

    if (atom.size < 8)
        return 0; /* continue */
    if (FUNC1(pb) != 0) { /* 0 sized mdat atom... use the 'wide' atom size */
        FUNC3(pb, atom.size - 4);
        return 0;
    }
    atom.type = FUNC2(pb);
    atom.size -= 8;
    if (atom.type != FUNC0('m','d','a','t')) {
        FUNC3(pb, atom.size);
        return 0;
    }
    err = FUNC4(c, pb, atom);
    return err;
}