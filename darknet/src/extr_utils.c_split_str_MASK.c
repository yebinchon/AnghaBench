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
typedef  int /*<<< orphan*/  list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 size_t FUNC2 (char*) ; 

list *FUNC3(char *s, char delim)
{
    size_t i;
    size_t len = FUNC2(s);
    list *l = FUNC1();
    FUNC0(l, s);
    for(i = 0; i < len; ++i){
        if(s[i] == delim){
            s[i] = '\0';
            FUNC0(l, &(s[i+1]));
        }
    }
    return l;
}