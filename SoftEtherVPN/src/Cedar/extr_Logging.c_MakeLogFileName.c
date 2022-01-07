
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp2 ;
typedef int tmp ;
typedef int tag ;
typedef unsigned long long UINT64 ;
typedef int UINT ;
typedef int LOG ;


 unsigned long long GetMaxLogSize () ;
 unsigned long long MAX_LOG_SIZE_DEFAULT ;
 int MAX_SIZE ;
 int MakeLogFileNameStringFromTick (int *,char*,int,unsigned long long,int) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

bool MakeLogFileName(LOG *g, char *name, UINT size, char *dir, char *prefix, UINT64 tick, UINT switch_type, UINT num, char *old_datestr)
{
 char tmp[MAX_SIZE];
 char tmp2[64];
 bool ret = 0;

 if (g == ((void*)0) || name == ((void*)0) || prefix == ((void*)0) || old_datestr == ((void*)0))
 {
  return 0;
 }

 MakeLogFileNameStringFromTick(g, tmp, sizeof(tmp), tick, switch_type);

 if (num == 0)
 {
  tmp2[0] = 0;
 }
 else
 {
  UINT64 max_log_size = GetMaxLogSize();
  if (max_log_size == MAX_LOG_SIZE_DEFAULT)
  {
   snprintf(tmp2, sizeof(tmp2), "~%02u", num);
  }
  else
  {
   char tag[32];
   char c = '2';
   if (max_log_size >= 1000000000ULL)
   {
    c = '3';
   }
   else if (max_log_size >= 100000000ULL)
   {
    c = '4';
   }
   else if (max_log_size >= 10000000ULL)
   {
    c = '5';
   }
   else if (max_log_size >= 1000000ULL)
   {
    c = '6';
   }
   else if (max_log_size >= 100000ULL)
   {
    c = '7';
   }
   else if (max_log_size >= 10000ULL)
   {
    c = '8';
   }
   else if (max_log_size >= 1000ULL)
   {
    c = '9';
   }

   StrCpy(tag, sizeof(tag), "~%02u");
   tag[3] = c;

   snprintf(tmp2, sizeof(tmp2), tag, num);
  }
 }

 if (strcmp(old_datestr, tmp) != 0)
 {
  ret = 1;
  StrCpy(old_datestr, MAX_SIZE, tmp);
 }

 snprintf(name, size, "%s%s%s%s%s.log", dir,
  StrLen(dir) == 0 ? "" : "/",
  prefix, tmp, tmp2
  );

 return ret;
}
