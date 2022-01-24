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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 size_t FUNC1 (char*) ; 

int FUNC2(char *s, list *options)
{
    size_t i;
    size_t len = FUNC1(s);
    char *val = 0;
    for(i = 0; i < len; ++i){
        if(s[i] == '='){
            s[i] = '\0';
            val = s+i+1;
            break;
        }
    }
    if(i == len-1) return 0;
    char *key = s;
    FUNC0(options, key, val);
    return 1;
}