
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ExpireDate; } ;
typedef TYPE_1__ WU_CONTEXT ;
typedef int LIST ;


 TYPE_1__* StrMapSearch (int *,char*) ;
 scalar_t__ Tick64 () ;
 scalar_t__ WU_CONTEXT_EXPIRE ;

__attribute__((used)) static WU_CONTEXT *WuGetContext(LIST *contexts, char *sessionkey)
{
 WU_CONTEXT *ret = StrMapSearch(contexts, sessionkey);
 if(ret != ((void*)0))
 {
  ret->ExpireDate = Tick64() + WU_CONTEXT_EXPIRE;
 }
 return ret;
}
