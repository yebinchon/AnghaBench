#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* name; } ;
typedef  TYPE_1__ OptionDef ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static const OptionDef *FUNC3(const OptionDef *po, const char *name)
{
    const char *p = FUNC0(name, ':');
    int len = p ? p - name : FUNC1(name);

    while (po->name) {
        if (!FUNC2(name, po->name, len) && FUNC1(po->name) == len)
            break;
        po++;
    }
    return po;
}