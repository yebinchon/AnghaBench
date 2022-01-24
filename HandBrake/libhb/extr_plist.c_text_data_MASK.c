#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_2__ {char* value; } ;
typedef  TYPE_1__ parse_data_t ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(
    void *ud,
    const xmlChar *xtext,
    int len)
{
    char *text = (char*)xtext;
    parse_data_t *pd = (parse_data_t*)ud;

    int pos = 0;
    if (pd->value != NULL)
    {
        pos = FUNC1(pd->value);
    }
    char *tmp = FUNC0(pd->value, pos + len + 1);
    if (tmp == NULL)
        return;
    pd->value = tmp;
    FUNC2(pd->value + pos, text, len);
    pd->value[pos + len] = 0;
}