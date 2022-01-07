
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned long nChildren; } ;
typedef TYPE_1__* RealDTEntry ;


 scalar_t__ DTGetProperty (TYPE_1__*,char*,void**,unsigned int*) ;
 TYPE_1__* GetFirstChild (TYPE_1__*) ;
 TYPE_1__* GetNextChild (TYPE_1__*) ;
 scalar_t__ kSuccess ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static RealDTEntry
FindChild(RealDTEntry cur, char *buf)
{
 RealDTEntry child;
 unsigned long index;
 char * str;
 unsigned int dummy;

 if (cur->nChildren == 0) {
  return ((void*)0);
 }
 index = 1;
 child = GetFirstChild(cur);
 while (1) {
  if (DTGetProperty(child, "name", (void **)&str, &dummy) != kSuccess) {
   break;
  }
  if (strcmp(str, buf) == 0) {
   return child;
  }
  if (index >= cur->nChildren) {
   break;
  }
  child = GetNextChild(child);
  index++;
 }
 return ((void*)0);
}
