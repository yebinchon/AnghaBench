
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcname ;
typedef int UINT ;
typedef int UCHAR ;


 int GetMachineName (char*,int) ;
 int MAX_SIZE ;
 int READ_UINT (int *) ;
 int SHA1_SIZE ;
 int Sha1 (int *,char*,int ) ;
 int StrLen (char*) ;
 int Zero (char*,int) ;

UINT GetMachineRand()
{
 char pcname[MAX_SIZE];
 UCHAR hash[SHA1_SIZE];

 Zero(pcname, sizeof(pcname));
 GetMachineName(pcname, sizeof(pcname));

 Sha1(hash, pcname, StrLen(pcname));

 return READ_UINT(hash);
}
