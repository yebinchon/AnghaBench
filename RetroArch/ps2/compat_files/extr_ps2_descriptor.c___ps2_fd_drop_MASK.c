#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ref_count; int current_folder_position; int /*<<< orphan*/  FileEntry; } ;
typedef  TYPE_1__ DescriptorTranslation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(DescriptorTranslation *map)
{
   FUNC0();

   if (map->ref_count == 1)
   {
      map->ref_count--;
      map->current_folder_position = -1;
      FUNC2(map->FileEntry);
      FUNC3(map, 0, sizeof(DescriptorTranslation));
   }
   else
   {
      map->ref_count--;
   }

   FUNC1();
   return 0;
}