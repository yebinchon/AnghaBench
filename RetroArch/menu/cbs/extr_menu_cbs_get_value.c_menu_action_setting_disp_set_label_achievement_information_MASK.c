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
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,unsigned int*,unsigned int,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC2(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   *s = '\0';
   *w = 2;

   FUNC0(list, s,
         len, w, type, label, i);

   FUNC1(s2, path, len2);
}