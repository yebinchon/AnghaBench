
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int CheckCitusVersion (int ) ;
 int CitusHasBeenLoaded () ;
 int DEBUG2 ;
 int OverrideTableVisibility ;
 int ReplaceTableVisibleFunctionWalker (int *) ;

void
ReplaceTableVisibleFunction(Node *inputNode)
{
 if (!OverrideTableVisibility ||
  !CitusHasBeenLoaded() || !CheckCitusVersion(DEBUG2))
 {
  return;
 }

 ReplaceTableVisibleFunctionWalker(inputNode);
}
