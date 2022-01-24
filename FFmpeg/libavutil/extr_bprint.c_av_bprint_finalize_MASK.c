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
struct TYPE_4__ {unsigned int size; char* str; scalar_t__ len; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char* FUNC4 (unsigned int) ; 
 char* FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 

int FUNC7(AVBPrint *buf, char **ret_str)
{
    unsigned real_size = FUNC1(buf->len + 1, buf->size);
    char *str;
    int ret = 0;

    if (ret_str) {
        if (FUNC2(buf)) {
            str = FUNC5(buf->str, real_size);
            if (!str)
                str = buf->str;
            buf->str = NULL;
        } else {
            str = FUNC4(real_size);
            if (str)
                FUNC6(str, buf->str, real_size);
            else
                ret = FUNC0(ENOMEM);
        }
        *ret_str = str;
    } else {
        if (FUNC2(buf))
            FUNC3(&buf->str);
    }
    buf->size = real_size;
    return ret;
}