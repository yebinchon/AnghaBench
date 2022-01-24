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
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int size; } ;
typedef  int /*<<< orphan*/  MOVContext ;
typedef  TYPE_1__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__) ; 

__attribute__((used)) static int FUNC5(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    while (atom.size > 8) {
        uint32_t tag;
        if (FUNC1(pb))
            return AVERROR_EOF;
        tag = FUNC2(pb);
        atom.size -= 4;
        if (tag == FUNC0('h','d','l','r')) {
            FUNC3(pb, -8, SEEK_CUR);
            atom.size += 8;
            return FUNC4(c, pb, atom);
        }
    }
    return 0;
}