
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int ret ;
typedef int UINT64 ;
typedef int UCHAR ;


 int ACCESS_LIST_EXCLUDED_PREFIX ;
 int ACCESS_LIST_INCLUDED_PREFIX ;
 int Copy (int *,int *,int) ;
 scalar_t__ IsEmptyStr (char*) ;
 int MAX_USERNAME_LEN ;
 int MakeSimpleUsernameRemoveNtDomain (char*,int,char*) ;
 int Rand64 () ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,scalar_t__) ;
 scalar_t__ StartWith (char*,int ) ;
 scalar_t__ StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;

UINT64 UsernameToInt64(char *name)
{
 UCHAR hash[SHA1_SIZE];
 UINT64 ret;
 char tmp[MAX_USERNAME_LEN + 1];

 if (name == 0 || IsEmptyStr(name))
 {
  return 0;
 }

 if (StartWith(name, ACCESS_LIST_INCLUDED_PREFIX) || StartWith(name, ACCESS_LIST_EXCLUDED_PREFIX))
 {
  return Rand64();
 }

 MakeSimpleUsernameRemoveNtDomain(tmp, sizeof(tmp), name);
 Trim(tmp);
 StrUpper(tmp);

 if (StrLen(tmp) == 0)
 {
  return 0;
 }

 Sha0(hash, tmp, StrLen(tmp));
 Copy(&ret, hash, sizeof(ret));

 return ret;
}
