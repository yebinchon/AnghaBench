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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 

int FUNC2(int argc, const char* argv[])
{
   int i;

   for (i = 1; i < argc; i++)
      FUNC1( "0x%08xU: %s\n", FUNC0( argv[ i ] ), argv[ i ] );

   return 0;
}