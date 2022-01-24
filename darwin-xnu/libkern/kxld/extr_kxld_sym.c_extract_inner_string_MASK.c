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
typedef  int u_long ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static kern_return_t
FUNC4(const char *str, const char *prefix, const char *suffix, 
    char *buf, u_long len)
{
    kern_return_t rval = KERN_FAILURE;
    u_long prelen = 0, suflen = 0, striplen = 0;

    FUNC0(str);
    FUNC0(buf);

    prelen = (prefix) ? FUNC2(prefix) : 0;
    suflen = (suffix) ? FUNC2(suffix) : 0;
    striplen = FUNC2(str) - prelen - suflen;

    FUNC1(striplen < len, finish, rval=KERN_FAILURE);

    FUNC3(buf, str + prelen, striplen);
    buf[striplen] = '\0';

    rval = KERN_SUCCESS;
finish:
    return rval;
}