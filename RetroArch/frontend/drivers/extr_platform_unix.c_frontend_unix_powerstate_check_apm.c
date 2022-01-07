
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;


 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_NONE ;
 int FRONTEND_POWERSTATE_NO_SOURCE ;
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ;
 int filestream_exists (int ) ;
 int filestream_read_file (int ,void**,int *) ;
 int free (char*) ;
 int int_string (char*,int*) ;
 int next_string (char**,char**) ;
 int proc_apm_path ;
 scalar_t__ string_is_equal (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool frontend_unix_powerstate_check_apm(
      enum frontend_powerstate *state,
      int *seconds, int *percent)
{
   size_t str_size = 0;
   int ac_status = 0;
   int battery_status = 0;
   int battery_flag = 0;
   int battery_percent = 0;
   int battery_time = 0;
   int64_t length = 0;
   char *ptr = ((void*)0);
   char *buf = ((void*)0);
   char *str = ((void*)0);

   if (!filestream_exists(proc_apm_path))
      goto error;

   if (filestream_read_file(proc_apm_path, (void**)&buf, &length) != 1)
      goto error;

   ptr = &buf[0];

   if (!next_string(&ptr, &str))
      goto error;
   if (!next_string(&ptr, &str))
      goto error;
   if (!next_string(&ptr, &str))
      goto error;

   if (!next_string(&ptr, &str))
      goto error;
   else if (!int_string(str, &ac_status))
      goto error;

   if (!next_string(&ptr, &str))
      goto error;
   else if (!int_string(str, &battery_status))
      goto error;

   if (!next_string(&ptr, &str))
      goto error;
   else if (!int_string(str, &battery_flag))
      goto error;
   if (!next_string(&ptr, &str))
      goto error;
   str_size = strlen(str) - 1;
   if (str[str_size] == '%')
      str[str_size] = '\0';
   if (!int_string(str, &battery_percent))
      goto error;

   if (!next_string(&ptr, &str))
      goto error;
   else if (!int_string(str, &battery_time))
      goto error;

   if (!next_string(&ptr, &str))
      goto error;
   else if (string_is_equal(str, "min"))
      battery_time *= 60;

   if (battery_flag == 0xFF)
      *state = FRONTEND_POWERSTATE_NONE;
   else if (battery_flag & (1 << 7))
      *state = FRONTEND_POWERSTATE_NO_SOURCE;
   else if (battery_flag & (1 << 3))
      *state = FRONTEND_POWERSTATE_CHARGING;
   else if (ac_status == 1)
      *state = FRONTEND_POWERSTATE_CHARGED;
   else
      *state = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   if (battery_percent >= 0)
      *percent = (battery_percent > 100) ? 100 : battery_percent;
   if (battery_time >= 0)
      *seconds = battery_time;

   if (buf)
      free(buf);
   buf = ((void*)0);

   return 1;

error:
   if (buf)
      free(buf);
   buf = ((void*)0);

   return 0;
}
