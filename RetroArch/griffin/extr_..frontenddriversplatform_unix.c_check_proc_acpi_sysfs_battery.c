
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int int64_t ;


 unsigned int atoi (char*) ;
 int filestream_exists (char*) ;
 int filestream_read_file (char*,void**,int *) ;
 int free (char*) ;
 char* proc_acpi_sysfs_battery_path ;
 int snprintf (char*,int,char*,char const*,char const*,char*) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static void check_proc_acpi_sysfs_battery(const char *node,
      bool *have_battery, bool *charging,
      int *seconds, int *percent)
{
   char path[1024];
   const char *base = proc_acpi_sysfs_battery_path;
   char *buf = ((void*)0);
   char *ptr = ((void*)0);
   char *key = ((void*)0);
   char *val = ((void*)0);
   bool charge = 0;
   bool choose = 0;
   unsigned capacity = 0;
   int64_t length = 0;
   int maximum = -1;
   int remaining = -1;
   int secs = -1;
   int pct = -1;

   path[0] = '\0';

   snprintf(path, sizeof(path), "%s/%s/%s", base, node, "status");

   if (!filestream_exists(path))
      return;

   if (filestream_read_file(path, (void**)&buf, &length) != 1)
      return;

   if (buf)
   {
      if (strstr((char*)buf, "Discharging"))
         *have_battery = 1;
      else if (strstr((char*)buf, "Charging"))
      {
         *have_battery = 1;
         *charging = 1;
      }
      else if (strstr((char*)buf, "Full"))
         *have_battery = 1;
      free(buf);
   }

   buf = ((void*)0);

   snprintf(path, sizeof(path), "%s/%s/%s", base, node, "capacity");
   if (filestream_read_file(path, (void**)&buf, &length) != 1)
      goto end;

   capacity = atoi(buf);

   *percent = capacity;

end:
   free(buf);
   buf = ((void*)0);
}
