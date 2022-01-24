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
typedef  int /*<<< orphan*/  png_const_charp ;
typedef  int /*<<< orphan*/ * png_charp ;
typedef  int /*<<< orphan*/  chunk_insert ;

/* Variables and functions */
 int /*<<< orphan*/  insert_tEXt ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static chunk_insert *
FUNC3(const char *key, const png_const_charp *text)
{
   static char what[5] = { 116, 69, 88, 116, 0 };
   png_charp parameter_list[3];

   parameter_list[0] = FUNC1(key);
   parameter_list[1] = FUNC2(text);
   parameter_list[2] = NULL;

   return FUNC0(what, insert_tEXt, 2, parameter_list);
}