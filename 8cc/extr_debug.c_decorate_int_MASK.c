#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bitsize; scalar_t__ bitoff; scalar_t__ usig; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 char* FUNC0 (char*,char*,char*,...) ; 

__attribute__((used)) static char *FUNC1(char *name, Type *ty) {
    char *u = (ty->usig) ? "u" : "";
    if (ty->bitsize > 0)
        return FUNC0("%s%s:%d:%d", u, name, ty->bitoff, ty->bitoff + ty->bitsize);
    return FUNC0("%s%s", u, name);
}