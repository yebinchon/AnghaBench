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
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(PutByteContext *pb, GetByteContext *g2, int offset, unsigned len)
{
    int i;

    if (offset == -1) {
        int c;

        FUNC2(g2, FUNC3(pb) - 1, SEEK_SET);
        c = FUNC0(g2);
        for (i = 0; i < len; i++) {
            FUNC1(pb, c);
        }
    } else if (offset < 0) {
        int start = FUNC3(pb) - (-offset);

        FUNC2(g2, start, SEEK_SET);
        for (i = 0; i < len; i++) {
            FUNC1(pb, FUNC0(g2));
        }
    } else {
        int start = FUNC3(pb) + offset;

        FUNC2(g2, start, SEEK_SET);
        for (i = 0; i < len; i++) {
            FUNC1(pb, FUNC0(g2));
        }
    }
}