
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int List ;


 int * lappend (int *,void*) ;
 void* linitial (int *) ;
 int * list_copy (int *) ;
 int * list_delete_first (int *) ;

__attribute__((used)) static List *
LeftRotateList(List *list, uint32 rotateCount)
{
 List *rotatedList = list_copy(list);

 uint32 rotateIndex = 0;
 for (rotateIndex = 0; rotateIndex < rotateCount; rotateIndex++)
 {
  void *firstElement = linitial(rotatedList);

  rotatedList = list_delete_first(rotatedList);
  rotatedList = lappend(rotatedList, firstElement);
 }

 return rotatedList;
}
