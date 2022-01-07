
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int SmbAuthenticate (char*,char*,char*,char*,int ,int *,int *,int *) ;

bool SmbPerformMsChapV2Auth(char* name, char* domainname, char* groupname, UCHAR* challenge8, UCHAR* MsChapV2_ClientResponse, UCHAR* nt_pw_hash_hash, UINT timeout)
{
 return SmbAuthenticate(name, "", domainname, groupname, timeout, challenge8, MsChapV2_ClientResponse, nt_pw_hash_hash);
}
