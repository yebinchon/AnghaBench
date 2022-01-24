#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char intfstream_t ;
struct TYPE_7__ {size_t list_ptr; TYPE_2__* list; } ;
typedef  TYPE_3__ database_info_handle_t ;
struct TYPE_6__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_5__ {char* data; } ;

/* Variables and functions */
 scalar_t__ PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 scalar_t__ FUNC1 (char*,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(database_info_handle_t *db,
      const char *name)
{
   size_t i;
   char       *path = (char *)FUNC5(PATH_MAX_LENGTH + 1);
   intfstream_t *fd = FUNC4(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      goto end;

   while (FUNC1(fd, name, path, PATH_MAX_LENGTH))
   {
      for (i = db->list_ptr; i < db->list->size; ++i)
      {
         if (db->list->elems[i].data
               && FUNC6(path, db->list->elems[i].data))
         {
            FUNC0("Pruning file referenced by cue: %s\n", path);
            FUNC2(db->list->elems[i].data);
            db->list->elems[i].data = NULL;
         }
      }
   }

end:
   if (fd)
   {
      FUNC3(fd);
      FUNC2(fd);
   }
   FUNC2(path);
}