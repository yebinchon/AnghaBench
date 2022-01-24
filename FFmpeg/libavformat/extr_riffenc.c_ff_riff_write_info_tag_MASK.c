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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC4 (char const*) ; 

void FUNC5(AVIOContext *pb, const char *tag, const char *str)
{
    size_t len = FUNC4(str);
    if (len > 0 && len < UINT32_MAX) {
        len++;
        FUNC3(pb, tag);
        FUNC2(pb, len);
        FUNC0(pb, str);
        if (len & 1)
            FUNC1(pb, 0);
    }
}