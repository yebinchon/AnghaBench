
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int UINT ;
typedef int UCHAR ;


 int ClearStr (char*,int) ;
 int Copy (int *,int *,int) ;
 int GetCurrentDDnsFqdn (char*,int) ;
 int MAX_SIZE ;
 int SHA1_SIZE ;
 int Sha1 (int *,char*,int ) ;
 int StrLen (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;

UINT GetCurrentDDnsFqdnHash()
{
 UINT ret;
 UCHAR hash[SHA1_SIZE];
 char name[MAX_SIZE];

 ClearStr(name, sizeof(name));
 GetCurrentDDnsFqdn(name, sizeof(name));

 Trim(name);
 StrUpper(name);

 Sha1(hash, name, StrLen(name));

 Copy(&ret, hash, sizeof(UINT));

 return ret;
}
