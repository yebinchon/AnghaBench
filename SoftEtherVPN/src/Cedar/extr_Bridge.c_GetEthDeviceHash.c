
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_10__ {size_t Num; TYPE_1__** Adapters; } ;
struct TYPE_9__ {size_t NumTokens; int * Token; } ;
struct TYPE_8__ {int Title; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ MS_ADAPTER_LIST ;


 int Copy (size_t*,int *,int) ;
 int FreeToken (TYPE_2__*) ;
 TYPE_2__* GetEthList () ;
 TYPE_3__* MsCreateAdapterListEx (int) ;
 int MsFreeAdapterList (TYPE_3__*) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int ) ;
 int StrCat (char*,int,int ) ;
 int StrLen (char*) ;

UINT GetEthDeviceHash()
{
 UINT ret = 0;
 MS_ADAPTER_LIST *a = MsCreateAdapterListEx(1);
 UINT num;
 UINT i;
 char tmp[4096];
 UCHAR hash[SHA1_SIZE];

 tmp[0] = 0;
 if (a != ((void*)0))
 {
  for (i = 0;i < a->Num;i++)
  {
   StrCat(tmp, sizeof(tmp), a->Adapters[i]->Title);
  }
 }
 MsFreeAdapterList(a);

 Sha0(hash, tmp, StrLen(tmp));

 Copy(&num, hash, sizeof(UINT));

 return num;

}
