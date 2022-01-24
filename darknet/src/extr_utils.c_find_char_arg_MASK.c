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
 int /*<<< orphan*/  FUNC0 (int,char**,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

char *FUNC2(int argc, char **argv, char *arg, char *def)
{
    int i;
    for(i = 0; i < argc-1; ++i){
        if(!argv[i]) continue;
        if(0==FUNC1(argv[i], arg)){
            def = argv[i+1];
            FUNC0(argc, argv, i);
            FUNC0(argc, argv, i);
            break;
        }
    }
    return def;
}