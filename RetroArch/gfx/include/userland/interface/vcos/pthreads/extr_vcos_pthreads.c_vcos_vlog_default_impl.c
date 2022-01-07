
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef size_t VCOS_LOG_LEVEL_T ;
struct TYPE_4__ {scalar_t__ want_prefix; } ;
struct TYPE_5__ {char* name; TYPE_1__ flags; } ;
typedef TYPE_2__ VCOS_LOG_CAT_T ;


 int __android_log_vprint (int ,char*,char const*,int ) ;
 int fflush (int *) ;
 int fprintf (int *,char*,char*) ;
 int fputs (char*,int *) ;
 int * log_fhandle ;
 int * log_prio ;
 int printf_lock ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 scalar_t__ vcos_use_android_log ;
 int vfprintf (int *,char const*,int ) ;

void vcos_vlog_default_impl(const VCOS_LOG_CAT_T *cat, VCOS_LOG_LEVEL_T _level, const char *fmt, va_list args)
{
   (void)_level;
      if(((void*)0) != log_fhandle)
      {
         if (cat->flags.want_prefix)
            fprintf( log_fhandle, "%s: ", cat->name );
         vfprintf(log_fhandle, fmt, args);
         fputs("\n", log_fhandle);
         fflush(log_fhandle);
      }




}
