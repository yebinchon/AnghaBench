
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int PATH_MAX_LENGTH ;
 int RARCH_WARN (char*,char*) ;
 int filestream_write_file (char*,void const*,size_t) ;
 int fill_pathname_application_data (char*,int) ;
 int free (char*) ;
 int localtime (int *) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,char*,unsigned int,char*) ;
 int strftime (char*,int,char*,int ) ;
 int time (int *) ;

__attribute__((used)) static bool dump_to_file_desperate(const void *data,
      size_t size, unsigned type)
{
   time_t time_;
   char *timebuf;
   char *path;
   char *application_data = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   application_data[0] = '\0';

   if (!fill_pathname_application_data(application_data,
            PATH_MAX_LENGTH * sizeof(char)))
   {
      free(application_data);
      return 0;
   }

   time(&time_);

   timebuf = (char*)malloc(256 * sizeof(char));
   timebuf[0] = '\0';

   strftime(timebuf,
         256 * sizeof(char),
         "%Y-%m-%d-%H-%M-%S", localtime(&time_));

   path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
   path[0] = '\0';
   snprintf(path,
         PATH_MAX_LENGTH * sizeof(char),
         "%s/RetroArch-recovery-%u%s",
         application_data, type,
         timebuf);

   free(application_data);
   free(timebuf);

   if (!filestream_write_file(path, data, size))
   {
      free(path);
      return 0;
   }

   RARCH_WARN("Succeeded in saving RAM data to \"%s\".\n", path);
   free(path);
   return 1;
}
