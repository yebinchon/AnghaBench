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
struct TYPE_3__ {int size; int* data; } ;
typedef  TYPE_1__ H2645NAL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERANGE ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(H2645NAL *nal, int skip_trailing_zeros)
{
    int size = nal->size;
    int v;

    while (skip_trailing_zeros && size > 0 && nal->data[size - 1] == 0)
        size--;

    if (!size)
        return 0;

    v = nal->data[size - 1];

    if (size > INT_MAX / 8)
        return FUNC0(ERANGE);
    size *= 8;

    /* remove the stop bit and following trailing zeros,
     * or nothing for damaged bitstreams */
    if (v)
        size -= FUNC1(v) + 1;

    return size;
}