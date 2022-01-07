
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int list_length (int *) ;

__attribute__((used)) inline static int
EventSetSizeForConnectionList(List *connections)
{

 return list_length(connections) + 2;
}
