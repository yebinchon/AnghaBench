
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char intfstream_t ;
struct TYPE_7__ {size_t list_ptr; TYPE_2__* list; } ;
typedef TYPE_3__ database_info_handle_t ;
struct TYPE_6__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_5__ {char* data; } ;


 scalar_t__ PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char*) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 scalar_t__ cue_next_file (char*,char const*,char*,scalar_t__) ;
 int free (char*) ;
 int intfstream_close (char*) ;
 char* intfstream_open_file (char const*,int ,int ) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ string_is_equal (char*,char*) ;

__attribute__((used)) static void task_database_cue_prune(database_info_handle_t *db,
      const char *name)
{
   size_t i;
   char *path = (char *)malloc(PATH_MAX_LENGTH + 1);
   intfstream_t *fd = intfstream_open_file(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      goto end;

   while (cue_next_file(fd, name, path, PATH_MAX_LENGTH))
   {
      for (i = db->list_ptr; i < db->list->size; ++i)
      {
         if (db->list->elems[i].data
               && string_is_equal(path, db->list->elems[i].data))
         {
            RARCH_LOG("Pruning file referenced by cue: %s\n", path);
            free(db->list->elems[i].data);
            db->list->elems[i].data = ((void*)0);
         }
      }
   }

end:
   if (fd)
   {
      intfstream_close(fd);
      free(fd);
   }
   free(path);
}
