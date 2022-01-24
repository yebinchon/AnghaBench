#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int asf_header_size; int asf_header_read_size; char* asf_header; } ;
typedef  TYPE_1__ MMSContext ;

/* Variables and functions */
 int FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC3(MMSContext *mms, uint8_t *buf, const int size)
{
    char *pos;
    int size_to_copy;
    int remaining_size = mms->asf_header_size - mms->asf_header_read_size;
    size_to_copy = FUNC0(size, remaining_size);
    pos = mms->asf_header + mms->asf_header_read_size;
    FUNC2(buf, pos, size_to_copy);
    if (mms->asf_header_read_size == mms->asf_header_size) {
        FUNC1(&mms->asf_header); // which contains asf header
    }
    mms->asf_header_read_size += size_to_copy;
    return size_to_copy;
}