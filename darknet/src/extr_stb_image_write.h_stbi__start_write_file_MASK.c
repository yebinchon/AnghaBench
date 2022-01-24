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
typedef  int /*<<< orphan*/  stbi__write_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  stbi__stdio_write ; 

__attribute__((used)) static int FUNC3(stbi__write_context *s, const char *filename)
{
   FILE *f;
#ifdef STBI_MSC_SECURE_CRT
   if (fopen_s(&f, filename, "wb"))
      f = NULL;
#else
   f = FUNC0(filename, "wb");
#endif
   FUNC2(s, stbi__stdio_write, (void *) f);
   return f != NULL;
}