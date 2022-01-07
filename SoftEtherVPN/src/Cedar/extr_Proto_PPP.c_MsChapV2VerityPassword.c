
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int MsChapV2_ClientResponse; int MsChapV2_PPPUsername; int MsChapV2_ServerChallenge; int MsChapV2_ClientChallenge; } ;
typedef TYPE_1__ IPC_MSCHAP_V2_AUTHINFO ;


 scalar_t__ Cmp (int *,int ,int) ;
 int GenerateNtPasswordHash (int *,char*) ;
 int MD5_SIZE ;
 int MsChapV2Client_GenerateResponse (int *,int *,int *) ;
 int MsChapV2_GenerateChallenge8 (int *,int ,int ,int ) ;

bool MsChapV2VerityPassword(IPC_MSCHAP_V2_AUTHINFO *d, char *password)
{
 UCHAR ntlm_hash[MD5_SIZE];
 UCHAR challenge8[8];
 UCHAR client_response[24];

 if (d == ((void*)0) || password == ((void*)0))
 {
  return 0;
 }

 GenerateNtPasswordHash(ntlm_hash, password);
 MsChapV2_GenerateChallenge8(challenge8, d->MsChapV2_ClientChallenge, d->MsChapV2_ServerChallenge, d->MsChapV2_PPPUsername);
 MsChapV2Client_GenerateResponse(client_response, challenge8, ntlm_hash);

 if (Cmp(client_response, d->MsChapV2_ClientResponse, 24) != 0)
 {
  return 0;
 }

 return 1;
}
