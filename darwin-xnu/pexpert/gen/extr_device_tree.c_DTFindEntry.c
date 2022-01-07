
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTEntry ;


 int DTInitialized ;
 scalar_t__ DTRootNode ;
 int find_entry (char const*,char const*,int *) ;
 int kError ;
 char* startingP ;

int DTFindEntry(const char *propName, const char *propValue, DTEntry *entryH)
{
 if (!DTInitialized) {
  return kError;
 }

 startingP = (char *)DTRootNode;
 return(find_entry(propName, propValue, entryH));
}
