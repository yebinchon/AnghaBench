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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5(GetByteContext *bc, uint8_t *str,
                      int strsize, int *length)
{
    int stringlen = 0;
    int readsize;
    stringlen = FUNC3(bc);
    if (stringlen + 1 > strsize)
        return FUNC0(EINVAL);
    readsize = FUNC4(bc, str, stringlen);
    if (readsize != stringlen) {
        FUNC2(NULL, AV_LOG_WARNING,
               "Unable to read as many bytes as AMF string signaled\n");
    }
    str[readsize] = '\0';
    *length = FUNC1(stringlen, readsize);
    return 0;
}