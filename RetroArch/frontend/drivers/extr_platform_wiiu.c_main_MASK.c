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
 int /*<<< orphan*/  FUNC0 (int*,char***) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char**,int /*<<< orphan*/ *) ; 

int FUNC6(int argc, char **argv)
{
   FUNC3();
   FUNC0(&argc, &argv);

#ifdef IS_SALAMANDER
   int salamander_main(int argc, char **argv);
   salamander_main(argc, argv);
#else
   FUNC5(argc, argv, NULL);
   FUNC2();
   FUNC1(NULL);
#endif /* IS_SALAMANDER */
   FUNC4();

   /* We always return 0 because if we don't, it can prevent loading a
    * different RPX/ELF in HBL. */
   return 0;
}