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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(int argc, char **argv, char *arg, int def)
{
    int i;
    for(i = 0; i < argc-1; ++i){
        if(!argv[i]) continue;
        if(0==FUNC2(argv[i], arg)){
            def = FUNC0(argv[i+1]);
            FUNC1(argc, argv, i);
            FUNC1(argc, argv, i);
            break;
        }
    }
    return def;
}