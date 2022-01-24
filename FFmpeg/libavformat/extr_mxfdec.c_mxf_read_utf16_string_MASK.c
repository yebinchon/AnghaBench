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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,size_t) ; 

__attribute__((used)) static inline int FUNC5(AVIOContext *pb, int size, char** str, int be)
{
    int ret;
    size_t buf_size;

    if (size < 0 || size > INT_MAX/2)
        return FUNC0(EINVAL);

    buf_size = size + size / 2 + 1;
    *str = FUNC2(buf_size);
    if (!*str)
        return FUNC0(ENOMEM);

    if (be)
        ret = FUNC3(pb, size, *str, buf_size);
    else
        ret = FUNC4(pb, size, *str, buf_size);

    if (ret < 0) {
        FUNC1(str);
        return ret;
    }

    return ret;
}