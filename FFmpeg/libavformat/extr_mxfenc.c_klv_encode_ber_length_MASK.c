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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, uint64_t len)
{
    // Determine the best BER size
    int size = FUNC1(len);
    if (size == 1) {
        //short form
        FUNC0(pb, len);
        return 1;
    }

    size --;
    // long form
    FUNC0(pb, 0x80 + size);
    while(size) {
        size--;
        FUNC0(pb, len >> 8 * size & 0xff);
    }
    return 0;
}