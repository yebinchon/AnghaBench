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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*,char*,scalar_t__) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(database_info_handle_t *db, const char *name)
{
   size_t i;
   char       *path = (char *)FUNC4(PATH_MAX_LENGTH + 1);
   intfstream_t *fd = FUNC3(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      goto end;

   while (FUNC2(fd, name, path, PATH_MAX_LENGTH))
   {
      for (i = db->list_ptr; i < db->list->size; ++i)
      {
         if (db->list->elems[i].data
               && FUNC5(path, db->list->elems[i].data))
         {
            FUNC0("Pruning file referenced by gdi: %s\n", path);
            FUNC1(db->list->elems[i].data);
            db->list->elems[i].data = NULL;
         }
      }
   }

end:
   FUNC1(fd);
   FUNC1(path);
}