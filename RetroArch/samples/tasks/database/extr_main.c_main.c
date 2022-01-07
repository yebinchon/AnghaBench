
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_info_deinit_list () ;
 int core_info_init_list (char const*,char const*,char const*,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ loop_active ;
 int main_db_cb ;
 int main_msg_queue_push ;
 int stderr ;
 int task_push_dbscan (char const*,char const*,char const*,int,int,int ) ;
 int task_queue_check () ;
 int task_queue_deinit () ;
 int task_queue_init (int,int ) ;

int main(int argc, char *argv[])
{
   const char *db_dir = ((void*)0);
   const char *core_info_dir = ((void*)0);
   const char *core_dir = ((void*)0);
   const char *input_dir = ((void*)0);
   const char *playlist_dir = ((void*)0);





   const char *exts = "so";


   if (argc < 6)
   {
      fprintf(stderr, "Usage: %s <database dir> <core dir> <core info dir> <input dir> <playlist dir>\n", argv[0]);
      return 1;
   }

   db_dir = argv[1];
   core_dir = argv[2];
   core_info_dir = argv[3];
   input_dir = argv[4];
   playlist_dir = argv[5];

   fprintf(stderr, "RDB database dir: %s\n", db_dir);
   fprintf(stderr, "Core         dir: %s\n", core_dir);
   fprintf(stderr, "Core info    dir: %s\n", core_info_dir);
   fprintf(stderr, "Input        dir: %s\n", input_dir);
   fprintf(stderr, "Playlist     dir: %s\n", playlist_dir);



   task_queue_init(0 , main_msg_queue_push);

   core_info_init_list(core_info_dir, core_dir, exts, 1);

   task_push_dbscan(playlist_dir, db_dir, input_dir, 1,
         1, main_db_cb);

   while (loop_active)
      task_queue_check();

   fprintf(stderr, "Exit loop\n");

   core_info_deinit_list();
   task_queue_deinit();

   return 0;
}
