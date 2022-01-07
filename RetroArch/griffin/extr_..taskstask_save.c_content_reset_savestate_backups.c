
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* path; scalar_t__ size; int * data; } ;
struct TYPE_3__ {char* path; scalar_t__ size; int * data; } ;


 int free (int *) ;
 TYPE_2__ undo_load_buf ;
 TYPE_1__ undo_save_buf ;

bool content_reset_savestate_backups(void)
{
   if (undo_save_buf.data)
   {
      free(undo_save_buf.data);
      undo_save_buf.data = ((void*)0);
   }

   undo_save_buf.path[0] = '\0';
   undo_save_buf.size = 0;

   if (undo_load_buf.data)
   {
      free(undo_load_buf.data);
      undo_load_buf.data = ((void*)0);
   }

   undo_load_buf.path[0] = '\0';
   undo_load_buf.size = 0;

   return 1;
}
