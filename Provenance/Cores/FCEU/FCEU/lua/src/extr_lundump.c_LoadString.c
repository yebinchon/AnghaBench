
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int L; int b; } ;
typedef int TString ;
typedef TYPE_1__ LoadState ;


 int LoadBlock (TYPE_1__*,char*,size_t) ;
 int LoadVar (TYPE_1__*,size_t) ;
 int * luaS_newlstr (int ,char*,size_t) ;
 char* luaZ_openspace (int ,int ,size_t) ;

__attribute__((used)) static TString* LoadString(LoadState* S)
{
 size_t size;
 LoadVar(S,size);
 if (size==0)
  return ((void*)0);
 else
 {
  char* s=luaZ_openspace(S->L,S->b,size);
  LoadBlock(S,s,size);
  return luaS_newlstr(S->L,s,size-1);
 }
}
