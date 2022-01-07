
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int msg_new ;
typedef int buffer ;
typedef int aslmsg ;
typedef int aslclient ;
typedef int FILE ;


 int ANDROID_LOG_ERROR ;
 int ANDROID_LOG_INFO ;
 int ANDROID_LOG_WARN ;
 int ASL_KEY_READ_UID ;
 int ASL_LEVEL_NOTICE ;
 int ASL_OPT_NO_DELAY ;
 int ASL_OPT_STDERR ;
 int ASL_TYPE_MSG ;
 int FILE_PATH_LOG_ERROR ;
 char const* FILE_PATH_LOG_INFO ;
 int FILE_PATH_LOG_WARN ;
 char* FILE_PATH_PROGRAM_NAME ;
 int OutputDebugStringA (char*) ;
 int __android_log_vprint (int,char*,char const*,int ) ;
 int asl_free (int ) ;
 int asl_log (int ,int ,int ,char*,char const*) ;
 int asl_new (int ) ;
 int asl_open (char*,char*,int) ;
 int asl_set (int ,int ,char*) ;
 int asl_vlog (int ,int ,int ,char const*,int ) ;
 int fflush (int *) ;
 int fprintf (int *,char*,char const*,...) ;
 int * log_file_fp ;
 scalar_t__ log_file_initialized ;
 int logging_mtx ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;
 int snprintf (char*,int,char*,char*,char const*,char const*) ;
 scalar_t__ string_is_equal (int ,char const*) ;
 int strlen (char*) ;
 int ui_companion_driver_log_msg (char*) ;
 int verbosity_log_level ;
 int vfprintf (int *,char const*,int ) ;
 int vprintf (char const*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;
 int wvsprintf (char*,char*,int ) ;

void RARCH_LOG_V(const char *tag, const char *fmt, va_list ap)
{
   if (verbosity_log_level > 1)
      return;

   {
      const char *tag_v = tag ? tag : FILE_PATH_LOG_INFO;
      FILE *fp = (FILE*)log_file_fp;
      if (fp)
      {
         fprintf(fp, "%s ", tag_v);
         vfprintf(fp, fmt, ap);
         fflush(fp);
      }






   }
}
