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
typedef  int /*<<< orphan*/  png_store ;
typedef  int /*<<< orphan*/  png_const_structp ;
typedef  char* png_const_charp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(png_store *ps, png_const_structp pp, png_const_charp prefix,
   png_const_charp message)
{
   char buffer[512];

   if (prefix)
      FUNC1(prefix, stderr);

   (void)FUNC2(ps, pp, buffer, sizeof buffer, 0, message);
   FUNC1(buffer, stderr);
   FUNC0('\n', stderr);
}