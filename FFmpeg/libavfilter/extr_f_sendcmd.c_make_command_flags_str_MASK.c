#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const* const) ; 

__attribute__((used)) static inline char *FUNC4(AVBPrint *pbuf, int flags)
{
    static const char * const flag_strings[] = { "enter", "leave" };
    int i, is_first = 1;

    FUNC2(pbuf, 0, AV_BPRINT_SIZE_AUTOMATIC);
    for (i = 0; i < FUNC0(flag_strings); i++) {
        if (flags & 1<<i) {
            if (!is_first)
                FUNC1(pbuf, '+', 1);
            FUNC3(pbuf, "%s", flag_strings[i]);
            is_first = 0;
        }
    }

    return pbuf->str;
}