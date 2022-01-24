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
typedef  int /*<<< orphan*/  entries ;
struct TYPE_3__ {scalar_t__ ref_count; int current_folder_position; int /*<<< orphan*/  FileEntry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILEENTRY_SIZE ; 
 int MAX_OPEN_FILES ; 
 TYPE_1__** __ps2_fdmap ; 
 TYPE_1__* __ps2_fdmap_pool ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
   int fd = -1;
   int i = 0;
   FUNC0();

   /* get free descriptor */
   for (fd = 0; fd < MAX_OPEN_FILES; ++fd)
   {
      if (__ps2_fdmap[fd] == NULL)
      {
         /* get free pool */
         for (i = 0; i < MAX_OPEN_FILES; ++i)
         {
            if (__ps2_fdmap_pool[i].ref_count == 0)
            {
               __ps2_fdmap[fd] = &__ps2_fdmap_pool[i];
               __ps2_fdmap[fd]->ref_count = 1;
               __ps2_fdmap[fd]->current_folder_position = -1;
               __ps2_fdmap[fd]->FileEntry = FUNC2(sizeof(entries), FILEENTRY_SIZE);
               FUNC1();
               return MAX_OPEN_FILES - fd;
            }
         }
      }
   }

   /* no mores descriptors available... */
   FUNC1();
   return -1;
}