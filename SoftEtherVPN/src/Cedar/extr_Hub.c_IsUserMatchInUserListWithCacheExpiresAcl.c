
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int filename2 ;
typedef int filename ;
typedef int UINT64 ;
typedef int LIST ;


 int ACCESS_LIST_INCLUDED_PREFIX ;
 scalar_t__ Cmp (char*,int ,int) ;
 int IsUserMatchInUserListWithCacheExpires (int *,char*,int ,int ) ;
 int MAX_SIZE ;
 int NEGATIVE_BOOL (int) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrLower (char*) ;
 int Trim (char*) ;

bool IsUserMatchInUserListWithCacheExpiresAcl(LIST *o, char *name_in_acl, UINT64 user_hash, UINT64 lifetime)
{
 char tmp[16];
 bool exclude = 0;
 char filename[MAX_SIZE];
 char filename2[MAX_SIZE];
 bool is_full_path = 0;
 bool ret = 0;

 if (o == ((void*)0) || name_in_acl == ((void*)0) || user_hash == 0 || StrLen(name_in_acl) < 9)
 {
  return 0;
 }

 StrCpy(tmp, sizeof(tmp), name_in_acl);
 StrLower(tmp);

 tmp[8] = 0;

 if (Cmp(tmp, ACCESS_LIST_INCLUDED_PREFIX, 8) == 0)
 {

  exclude = 0;
 }
 else
 {

  exclude = 1;
 }


 StrCpy(filename, sizeof(filename), name_in_acl + 8);
 Trim(filename);


 if (filename[0] == '\\' || filename[0] == '/' || (filename[1] == ':' && filename[2] == '\\'))
 {
  is_full_path = 1;
 }

 if (is_full_path == 0)
 {

  StrCpy(filename2, sizeof(filename2), "@");
  StrCat(filename2, sizeof(filename2), filename);
  StrCpy(filename, sizeof(filename), filename2);
 }

 ret = IsUserMatchInUserListWithCacheExpires(o, filename, user_hash, lifetime);

 if (exclude)
 {
  ret = NEGATIVE_BOOL(ret);
 }

 return ret;
}
