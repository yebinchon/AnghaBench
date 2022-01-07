
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int hostfs_log_cat ;
 int * p_file_info_table ;
 int vcos_log_unregister (int *) ;

void vc_hostfs_exit(void)
{
   vcos_log_unregister(&hostfs_log_cat);
   if (p_file_info_table)
   {
      free(p_file_info_table);
      p_file_info_table = ((void*)0);
   }
}
