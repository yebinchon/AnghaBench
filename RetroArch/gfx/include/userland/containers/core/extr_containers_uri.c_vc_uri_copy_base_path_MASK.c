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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  const VC_URI_PARTS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,scalar_t__,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static bool FUNC5( const VC_URI_PARTS_T *base_uri,
      VC_URI_PARTS_T *relative_uri )
{
   const char *base_path = FUNC2(base_uri);

   /* No path set (or empty), copy from base */
   if (!FUNC4(relative_uri, base_path))
      return false;

   /* If relative path has no queries, copy base queries across */
   if (!FUNC1(relative_uri))
   {
      uint32_t base_queries = FUNC1(base_uri);
      const char *name, *value;
      uint32_t ii;

      for (ii = 0; ii < base_queries; ii++)
      {
         FUNC3(base_uri, ii, &name, &value);
         if (!FUNC0(relative_uri, name, value))
            return false;
      }
   }

   return true;
}