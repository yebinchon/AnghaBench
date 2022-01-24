#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  supported_extensions_list; } ;
typedef  TYPE_1__ core_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(
      const core_info_t *core, const char *path)
{
   if (!core || !core->supported_extensions_list)
      return false;
   if (FUNC1(path))
      return false;

   return FUNC2(
         core->supported_extensions_list, ".", FUNC0(path));
}