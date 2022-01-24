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
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t FUNC4(AVIOContext *bc)
{
    unsigned int len = FUNC3(bc);

    if (len == 2)
        return FUNC1(bc);
    else if (len == 4)
        return FUNC2(bc);
    else {
        FUNC0(NULL, AV_LOG_ERROR, "Unsupported fourcc length %d\n", len);
        return -1;
    }
}