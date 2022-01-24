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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int64_t FUNC4(AVIOContext *pb, int64_t pos)
{
    int64_t curpos;
    int size;

    size = FUNC1(pb) - pos;
    if (size % 4) {
        FUNC3(pb, 4 - size % 4);
        size = FUNC1(pb) - pos;
    }
    curpos = FUNC1(pb);
    FUNC0(pb, pos + 6, SEEK_SET);
    FUNC2(pb, size);
    FUNC0(pb, curpos, SEEK_SET);
    return curpos - pos;
}