#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_4__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FAILED_TO_REMOVE_TEMPORARY_FILE ; 
 int /*<<< orphan*/  MSG_REMOVING_TEMPORARY_CONTENT_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*) ; 
 int _content_is_inited ; 
 scalar_t__ content_rom_crc ; 
 int core_does_not_need_content ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int pending_content_rom_crc ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* temporary_content ; 

void FUNC5(void)
{
   unsigned i;

   if (temporary_content)
   {
      for (i = 0; i < temporary_content->size; i++)
      {
         const char *path = temporary_content->elems[i].data;

         FUNC1("%s: %s.\n",
               FUNC3(MSG_REMOVING_TEMPORARY_CONTENT_FILE), path);
         if (FUNC2(path) != 0)
            FUNC0("%s: %s.\n",
                  FUNC3(MSG_FAILED_TO_REMOVE_TEMPORARY_FILE),
                  path);
      }
      FUNC4(temporary_content);
   }

   temporary_content          = NULL;
   content_rom_crc            = 0;
   _content_is_inited         = false;
   core_does_not_need_content = false;
   pending_content_rom_crc    = false;
}