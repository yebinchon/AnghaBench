
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensionName; } ;
typedef TYPE_1__ wgl_StrToExtMap ;


 TYPE_1__* ExtensionTable ;
 int g_extensionMapSize ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static wgl_StrToExtMap *FindExtEntry(const char *extensionName)
{
 int loop;
 wgl_StrToExtMap *currLoc = ExtensionTable;
 for(loop = 0; loop < g_extensionMapSize; ++loop, ++currLoc)
 {
  if(strcmp(extensionName, currLoc->extensionName) == 0)
   return currLoc;
 }

 return ((void*)0);
}
