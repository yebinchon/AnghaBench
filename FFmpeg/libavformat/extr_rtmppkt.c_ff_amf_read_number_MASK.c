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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 scalar_t__ AMF_DATA_TYPE_NUMBER ; 
 int AVERROR_INVALIDDATA ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(GetByteContext *bc, double *val)
{
    uint64_t read;
    if (FUNC2(bc) != AMF_DATA_TYPE_NUMBER)
        return AVERROR_INVALIDDATA;
    read = FUNC1(bc);
    *val = FUNC0(read);
    return 0;
}