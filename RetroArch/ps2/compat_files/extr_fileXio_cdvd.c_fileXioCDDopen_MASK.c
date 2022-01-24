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
struct TYPE_3__ {int /*<<< orphan*/  FileEntry; int /*<<< orphan*/  items; scalar_t__ current_folder_position; } ;
typedef  TYPE_1__ DescriptorTranslation ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *name)
{
   int fd = -1;
   if (FUNC3()){
      fd = FUNC0();
      DescriptorTranslation *descriptor = FUNC1(fd);
      descriptor->current_folder_position = 0;
      descriptor->items = FUNC2(name, descriptor->FileEntry);
   }
   return fd;
}