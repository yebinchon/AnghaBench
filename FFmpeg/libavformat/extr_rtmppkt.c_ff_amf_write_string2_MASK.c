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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_DATA_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 

void FUNC4(uint8_t **dst, const char *str1, const char *str2)
{
    int len1 = 0, len2 = 0;
    if (str1)
        len1 = FUNC3(str1);
    if (str2)
        len2 = FUNC3(str2);
    FUNC2(dst, AMF_DATA_TYPE_STRING);
    FUNC0(dst, len1 + len2);
    FUNC1(dst, str1, len1);
    FUNC1(dst, str2, len2);
}