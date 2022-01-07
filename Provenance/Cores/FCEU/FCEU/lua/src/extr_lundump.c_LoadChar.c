
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LoadState ;


 int LoadVar (int *,char) ;

__attribute__((used)) static int LoadChar(LoadState* S)
{
 char x;
 LoadVar(S,x);
 return x;
}
