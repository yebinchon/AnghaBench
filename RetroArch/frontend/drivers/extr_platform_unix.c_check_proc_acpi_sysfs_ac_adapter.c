
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int int64_t ;


 int filestream_exists (char*) ;
 int filestream_read_file (char*,void**,int *) ;
 int free (char*) ;
 char* proc_acpi_sysfs_ac_adapter_path ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void check_proc_acpi_sysfs_ac_adapter(const char * node, bool *have_ac)
{
   char path[1024];
   int64_t length = 0;
   char *buf = ((void*)0);
   const char *base = proc_acpi_sysfs_ac_adapter_path;

   path[0] = '\0';

   snprintf(path, sizeof(path), "%s/%s", base, "online");
   if (!filestream_exists(path))
      return;

   if (filestream_read_file(path, (void**)&buf, &length) != 1)
      return;

   if (strstr((char*)buf, "1"))
      *have_ac = 1;

   free(buf);
}
