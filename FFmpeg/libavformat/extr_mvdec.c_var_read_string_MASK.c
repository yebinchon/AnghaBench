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
 int INT_MAX ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC3(AVIOContext *pb, int size)
{
    int n;
    char *str;

    if (size < 0 || size == INT_MAX)
        return NULL;

    str = FUNC0(size + 1);
    if (!str)
        return NULL;
    n = FUNC1(pb, size, str, size + 1);
    if (n < size)
        FUNC2(pb, size - n);
    return str;
}