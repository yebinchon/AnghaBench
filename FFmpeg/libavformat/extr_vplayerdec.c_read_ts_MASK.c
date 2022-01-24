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
typedef  int int64_t ;

/* Variables and functions */
 int AV_NOPTS_VALUE ; 
 int FUNC0 (char*,char*,int*,int*,int*,...) ; 
 scalar_t__ FUNC1 (char*,char) ; 

__attribute__((used)) static int64_t FUNC2(char **line)
{
    char c;
    int hh, mm, ss, ms, n, len;

    if (((n = FUNC0(*line, "%d:%d:%d.%d%c%n", &hh, &mm, &ss, &ms, &c, &len)) >= 5 ||
         (n = FUNC0(*line, "%d:%d:%d%c%n",    &hh, &mm, &ss,      &c, &len)) >= 4) && FUNC1(": =", c)) {
        *line += len;
        return (hh*3600LL + mm*60LL + ss) * 100LL + (n < 5 ? 0 : ms);
    }
    return AV_NOPTS_VALUE;
}