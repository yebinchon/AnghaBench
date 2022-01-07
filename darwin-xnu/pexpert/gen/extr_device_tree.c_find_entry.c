
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nProperties; unsigned int nChildren; } ;
struct TYPE_3__ {int length; char* name; } ;
typedef TYPE_1__ DeviceTreeNodeProperty ;
typedef TYPE_2__ DeviceTreeNode ;
typedef scalar_t__ DTEntry ;


 int kError ;
 int kSuccess ;
 char* startingP ;
 scalar_t__ strcmp (char*,char const*) ;

int find_entry(const char *propName, const char *propValue, DTEntry *entryH)
{
 DeviceTreeNode *nodeP = (DeviceTreeNode *) (void *) startingP;
 unsigned int k;

 if (nodeP->nProperties == 0) return(kError);
 startingP = (char *) (nodeP + 1);


 for (k = 0; k < nodeP->nProperties; ++k) {
  DeviceTreeNodeProperty *propP = (DeviceTreeNodeProperty *) (void *) startingP;

  startingP += sizeof (*propP) + ((propP->length + 3) & -4);

  if (strcmp (propP->name, propName) == 0) {
   if (propValue == ((void*)0) || strcmp( (char *)(propP + 1), propValue) == 0)
   {
    *entryH = (DTEntry)nodeP;
    return(kSuccess);
   }
  }
 }


 for (k = 0; k < nodeP->nChildren; ++k)
 {
  if (find_entry(propName, propValue, entryH) == kSuccess)
   return(kSuccess);
 }
 return(kError);
}
