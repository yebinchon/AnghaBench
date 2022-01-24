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
 int TOKEN_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(char *file)
{
    extern int __crt0_argc;
    extern char **__crt0_argv;

    /* Our token list */
    int i, argc;
    char *argv[TOKEN_LIST_SIZE];

    FUNC3();
    for(i = 0; i < TOKEN_LIST_SIZE; i += 1) argv[i] = NULL;

    /* Check configuration file */
    if(file) FUNC2(file, &argc, argv);

    /* Check extracted tokens */
    FUNC1(argc, argv);

    /* Free token list */
    for(i = 0; i < argc; i += 1) if(argv[argc]) FUNC0 (argv[argc]);

    /* Check command line */
    FUNC1(__crt0_argc, __crt0_argv);
}