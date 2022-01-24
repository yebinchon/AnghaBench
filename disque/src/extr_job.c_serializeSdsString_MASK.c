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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  count ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

char *FUNC3(char *p, sds s) {
    size_t len = s ? FUNC2(s) : 0;
    uint32_t count = FUNC0(len);

    FUNC1(p,&count,sizeof(count));
    if (s) FUNC1(p+sizeof(count),s,len);
    return p + sizeof(count) + len;
}