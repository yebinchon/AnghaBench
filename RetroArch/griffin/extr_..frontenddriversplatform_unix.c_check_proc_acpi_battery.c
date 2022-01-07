
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int path ;
typedef int int64_t ;



 int djb2_calculate (char*) ;
 int filestream_exists (char*) ;
 int filestream_read_file (char*,void**,int *) ;
 int free (char*) ;
 scalar_t__ make_proc_acpi_key_val (char**,char**,char**) ;
 char* proc_acpi_battery_path ;
 int snprintf (char*,int,char*,char const*,char const*,char*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static void check_proc_acpi_battery(const char * node, bool * have_battery,
      bool * charging, int *seconds, int *percent)
{
   char path[1024];
   const char *base = proc_acpi_battery_path;
   int64_t length = 0;
   char *ptr = ((void*)0);
   char *buf = ((void*)0);
   char *buf_info = ((void*)0);
   char *key = ((void*)0);
   char *val = ((void*)0);
   bool charge = 0;
   bool choose = 0;
   int maximum = -1;
   int remaining = -1;
   int secs = -1;
   int pct = -1;

   path[0] = '\0';

   snprintf(path, sizeof(path), "%s/%s/%s", base, node, "state");

   if (!filestream_exists(path))
      goto end;

   if (!filestream_read_file(path, (void**)&buf, &length))
      goto end;

   snprintf(path, sizeof(path), "%s/%s/%s", base, node, "info");
   if (!filestream_read_file(path, (void**)&buf_info, &length))
      goto end;

   ptr = &buf[0];

   while (make_proc_acpi_key_val(&ptr, &key, &val))
   {
      if (string_is_equal(key, "present"))
      {
         if (string_is_equal(val, "yes"))
            *have_battery = 1;
      }
      else if (string_is_equal(key, "charging state"))
      {
         if (string_is_equal(val, "charging"))
            charge = 1;
         else
         {
            uint32_t val_hash = djb2_calculate(val);

            switch (val_hash)
            {
               case 128:
                  charge = 1;
                  break;
               default:
                  break;
            }
         }
      }
      else if (string_is_equal(key, "remaining capacity"))
      {
         char *endptr = ((void*)0);

         if (endptr && *endptr == ' ')
            remaining = (int)strtol(val, &endptr, 10);
      }
   }

   ptr = &buf_info[0];

   while (make_proc_acpi_key_val(&ptr, &key, &val))
   {
      char *endptr = ((void*)0);

      if (string_is_equal(key, "design capacity"))
         if (endptr && *endptr == ' ')
            maximum = (int)strtol(val, &endptr, 10);
   }

   if ((maximum >= 0) && (remaining >= 0))
   {
      pct = (int) ((((float) remaining) / ((float) maximum)) * 100.0f);
      if (pct < 0)
         pct = 0;
      if (pct > 100)
         pct = 100;
   }







   if ((secs < 0) && (*seconds < 0))
   {
      if ((pct < 0) && (*percent < 0))
         choose = 1;
      if (pct > *percent)
         choose = 1;
   }
   else if (secs > *seconds)
      choose = 1;

   if (choose)
   {
      *seconds = secs;
      *percent = pct;
      *charging = charge;
   }

end:
   if (buf_info)
      free(buf_info);
   if (buf)
      free(buf);
   buf = ((void*)0);
   buf_info = ((void*)0);
}
