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
typedef  int uint64_t ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 unsigned int FUNC2 (char*,int,char*,double,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *FUNC4(double *dp, int count, const char *sep)
{
    int i;
    char *ap, *ap0;
    uint64_t component_len;
    if (!sep) sep = ", ";
    component_len = 24LL + FUNC3(sep);
    if (count >= (INT_MAX - 1)/component_len)
        return NULL;
    ap = FUNC1(component_len * count + 1);
    if (!ap)
        return NULL;
    ap0   = ap;
    ap[0] = '\0';
    for (i = 0; i < count; i++) {
        unsigned l = FUNC2(ap, component_len, "%.15g%s", dp[i], sep);
        if(l >= component_len) {
            FUNC0(ap0);
            return NULL;
        }
        ap += l;
    }
    ap0[FUNC3(ap0) - FUNC3(sep)] = '\0';
    return ap0;
}