
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UINT64 ;
typedef int UINT ;


 int Format (char*,int,char*,...) ;
 int MAX_SIZE ;
 int StrCpy (char*,int,char*) ;
 int Trim (char*) ;

void GetSpanStrMilli(char *str, UINT size, UINT64 sec64)
{
 char tmp[MAX_SIZE];

 if (str == ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), "");
 if (sec64 >= (UINT64)(1000 * 3600 * 24))
 {
  Format(tmp, sizeof(tmp), "%u:", (UINT)(sec64 / (UINT64)(1000 * 3600 * 24)));
 }

 Format(tmp, sizeof(tmp), "%s%02u:%02u:%02u.%03u", tmp,
  (UINT)(sec64 % (UINT64)(1000 * 60 * 60 * 24)) / (1000 * 60 * 60),
  (UINT)(sec64 % (UINT64)(1000 * 60 * 60)) / (1000 * 60),
  (UINT)(sec64 % (UINT64)(1000 * 60)) / 1000,
  (UINT)(sec64 % (UINT64)(1000)));

 Trim(tmp);
 StrCpy(str, size, tmp);
}
