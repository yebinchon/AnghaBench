
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value ;
typedef int key ;
typedef int UINT ;
struct TYPE_3__ {char* Data; } ;
typedef TYPE_1__ HTTP_VALUE ;
typedef int HTTP_HEADER ;


 int Decode64 (char*,char*) ;
 int Free (char*) ;
 TYPE_1__* GetHttpValue (int *,char*) ;
 scalar_t__ GetKeyAndValue (char*,char*,int,char*,int,char*) ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrSize (char*) ;
 char* ZeroMalloc (int) ;

bool HttpParseBasicAuthHeader(HTTP_HEADER *h, char *username, UINT username_size, char *password, UINT password_size)
{
 bool ret = 0;
 HTTP_VALUE *auth_value;
 HTTP_VALUE *vpnadmin_hubname;
 HTTP_VALUE *vpnadmin_password;
 if (h == ((void*)0) || username == ((void*)0) || password == ((void*)0))
 {
  return 0;
 }

 auth_value = GetHttpValue(h, "Authorization");
 vpnadmin_hubname = GetHttpValue(h, "X-VPNADMIN-HUBNAME");
 vpnadmin_password = GetHttpValue(h, "X-VPNADMIN-PASSWORD");

 if (vpnadmin_password != ((void*)0))
 {
  if (vpnadmin_hubname == ((void*)0))
  {
   StrCpy(username, username_size, "");
  }
  else
  {
   StrCpy(username, username_size, vpnadmin_hubname->Data);
  }

  StrCpy(password, password_size, vpnadmin_password->Data);

  ret = 1;
 }

 if (ret == 0 && auth_value != ((void*)0))
 {
  char key[32], value[MAX_SIZE];

  if (GetKeyAndValue(auth_value->Data, key, sizeof(key), value, sizeof(value), " \t"))
  {
   if (StrCmpi(key, "Basic") == 0 && IsEmptyStr(value) == 0)
   {
    UINT b64_dest_size = StrSize(value) * 2 + 256;
    char *b64_dest = ZeroMalloc(b64_dest_size);

    Decode64(b64_dest, value);

    if (IsEmptyStr(b64_dest) == 0)
    {
     if (b64_dest[0] == ':')
     {

      StrCpy(username, username_size, "");
      StrCpy(password, password_size, b64_dest + 1);
      ret = 1;
     }
     else
     {
      if (GetKeyAndValue(b64_dest, username, username_size, password, password_size, ":"))
      {
       ret = 1;
      }
     }
    }

    Free(b64_dest);
   }
  }
 }

 return ret;
}
