
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_info_t ;


 int DEBUG_MINOR (char*) ;
 int FILE_INFO_TABLE_CHUNK_LEN ;
 int assert (int ) ;
 scalar_t__ calloc (int ,int) ;
 int file_info_table_len ;
 int fprintf (int ,char*,char*) ;
 int hostfs_log_cat ;
 int * p_file_info_table ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int vcos_log_register (char*,int *) ;
 int vcos_thread_current () ;
 char* vcos_thread_get_name (int ) ;

void vc_hostfs_init(void)
{







   const char *thread_name = vcos_thread_get_name(vcos_thread_current());
   if (strcmp(thread_name, "FILESYS") != 0 && strcmp(thread_name, "HFilesys") != 0)
   {
      fprintf(stderr,"%s: vc_hostfs is deprecated. Please use stdio\n",
              vcos_thread_get_name(vcos_thread_current()));
   }

   vcos_log_register("hostfs", &hostfs_log_cat);
   DEBUG_MINOR("init");

   p_file_info_table = (file_info_t *)calloc( FILE_INFO_TABLE_CHUNK_LEN, sizeof( file_info_t ) );
   assert( p_file_info_table != ((void*)0) );
   if (p_file_info_table)
   {
      file_info_table_len = FILE_INFO_TABLE_CHUNK_LEN;
   }
}
