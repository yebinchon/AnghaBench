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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 char const* FINAL_CLASS_TOKEN ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  OSOBJ_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

kern_return_t
FUNC4(const char *class_name, 
    char final_sym_name[], u_long final_sym_name_len)
{
    kern_return_t rval = KERN_FAILURE;
    u_long outlen = 0;

    FUNC0(class_name);
    FUNC0(final_sym_name);

    outlen = FUNC3(final_sym_name, OSOBJ_PREFIX, final_sym_name_len);
    FUNC1(outlen < final_sym_name_len, finish, 
        rval=KERN_FAILURE);

    outlen = FUNC2(final_sym_name, class_name, final_sym_name_len);
    FUNC1(outlen < final_sym_name_len, finish, 
        rval=KERN_FAILURE);

    outlen = FUNC2(final_sym_name, FINAL_CLASS_TOKEN, final_sym_name_len);
    FUNC1(outlen < final_sym_name_len, finish, 
        rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:
    return rval;
}