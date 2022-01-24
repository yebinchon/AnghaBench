#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  msg_new ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  aslmsg ;
typedef  int /*<<< orphan*/  aslclient ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ANDROID_LOG_ERROR ; 
 int ANDROID_LOG_INFO ; 
 int ANDROID_LOG_WARN ; 
 int /*<<< orphan*/  ASL_KEY_READ_UID ; 
 int /*<<< orphan*/  ASL_LEVEL_NOTICE ; 
 int ASL_OPT_NO_DELAY ; 
 int ASL_OPT_STDERR ; 
 int /*<<< orphan*/  ASL_TYPE_MSG ; 
 int /*<<< orphan*/  FILE_PATH_LOG_ERROR ; 
 char const* FILE_PATH_LOG_INFO ; 
 int /*<<< orphan*/  FILE_PATH_LOG_WARN ; 
 char* FILE_PATH_PROGRAM_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/ * log_file_fp ; 
 scalar_t__ log_file_initialized ; 
 int /*<<< orphan*/  logging_mtx ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int verbosity_log_level ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC18 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC20(const char *tag, const char *fmt, va_list ap)
{
   if (verbosity_log_level > 1)
      return;

   {
      const char *tag_v = tag ? tag : FILE_PATH_LOG_INFO;
#if TARGET_OS_IPHONE
#if TARGET_IPHONE_SIMULATOR
      vprintf(fmt, ap);
#else
      static aslclient asl_client;
      static int asl_initialized = 0;
      if (!asl_initialized)
      {
         asl_client      = asl_open(
               FILE_PATH_PROGRAM_NAME,
               "com.apple.console",
               ASL_OPT_STDERR | ASL_OPT_NO_DELAY);
         asl_initialized = 1;
      }
      aslmsg msg = asl_new(ASL_TYPE_MSG);
      asl_set(msg, ASL_KEY_READ_UID, "-1");
      if (tag)
         asl_log(asl_client, msg, ASL_LEVEL_NOTICE, "%s", tag);
      asl_vlog(asl_client, msg, ASL_LEVEL_NOTICE, fmt, ap);
      asl_free(msg);
#endif
#elif defined(_XBOX1)
      /* FIXME: Using arbitrary string as fmt argument is unsafe. */
      char msg_new[256];
      char buffer[256];

      msg_new[0] = buffer[0] = '\0';
      snprintf(msg_new, sizeof(msg_new), "%s: %s %s",
            FILE_PATH_PROGRAM_NAME, tag_v, fmt);
      wvsprintf(buffer, msg_new, ap);
      OutputDebugStringA(buffer);
#elif defined(ANDROID)
      int prio = ANDROID_LOG_INFO;
      if (tag)
      {
         if (string_is_equal(FILE_PATH_LOG_WARN, tag))
            prio = ANDROID_LOG_WARN;
         else if (string_is_equal(FILE_PATH_LOG_ERROR, tag))
            prio = ANDROID_LOG_ERROR;
      }

      if (log_file_initialized)
      {
         vfprintf(log_file_fp, fmt, ap);
         fflush(log_file_fp);
      }
      else
         __android_log_vprint(prio, FILE_PATH_PROGRAM_NAME, fmt, ap);
#else
      FILE *fp = (FILE*)log_file_fp;
#if defined(HAVE_QT) || defined(__WINRT__)
      int ret;
      char buffer[256];
      buffer[0] = '\0';
      ret = vsnprintf(buffer, sizeof(buffer), fmt, ap);

      /* ensure null termination and line break in error case */
      if (ret < 0)
      {
         int end;
         buffer[sizeof(buffer) - 1]  = '\0';
         end = strlen(buffer) - 1;
         if (end >= 0)
            buffer[end] = '\n';
         else
         {
            buffer[0]   = '\n';
            buffer[1]   = '\0';
         }
      }

      if (fp)
      {
         fprintf(fp, "%s %s", tag_v, buffer);
         fflush(fp);
      }

#if defined(HAVE_QT)
      ui_companion_driver_log_msg(buffer);
#endif

#if defined(__WINRT__)
      OutputDebugStringA(buffer);
#endif
#else
#if defined(HAVE_LIBNX)
      mutexLock(&logging_mtx);
#endif
      if (fp)
      {
         FUNC9(fp, "%s ", tag_v);
         FUNC16(fp, fmt, ap);
         FUNC8(fp);
      }
#if defined(HAVE_LIBNX)
      mutexUnlock(&logging_mtx);
#endif

#endif
#endif
   }
}