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

/* Variables and functions */
 int MAX_PATH ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int target_arch ; 
 int target_os ; 

bool FUNC4(const char *name) {
    const char *end = name + FUNC3(name);

    const char *ptr1 = end;
    while (ptr1 != name && ptr1[-1] != '_') {
        ptr1--;
    }
    char str1[MAX_PATH];
    if (ptr1 == name) {
        str1[0] = 0;
    } else {
        FUNC2(str1, ptr1, end - ptr1);
        str1[end - ptr1] = 0;
        ptr1--;
    }

    const char *ptr2 = ptr1;
    while (ptr2 != name && ptr2[-1] != '_') {
        ptr2--;
    }
    char str2[MAX_PATH];
    if (ptr2 == name) {
        str2[0] = 0;
    } else {
        FUNC2(str2, ptr2, ptr1 - ptr2);
        str2[ptr1 - ptr2] = 0;
    }

    int os1 = FUNC1(str1);
    int arch1 = FUNC0(str1);
    int os2 = FUNC1(str2);
    int arch2 = FUNC0(str2);
    if (arch1 != -1 && os2 != -1) {
        return arch1 != target_arch || os2 != target_os;
    } else if (arch2 != -1 && os1 != -1) {
        return arch2 != target_arch || os1 != target_os;
    } else if (os1 != -1) {
        return os1 != target_os;
    } else if (arch1 != -1) {
        return arch1 != target_arch;
    } else {
        return false;
    }
}