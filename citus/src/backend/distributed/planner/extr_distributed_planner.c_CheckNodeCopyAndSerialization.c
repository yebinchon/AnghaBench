
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * copyObject (int *) ;
 char* nodeToString (int *) ;
 int pfree (char*) ;
 scalar_t__ stringToNode (char*) ;

__attribute__((used)) static Node *
CheckNodeCopyAndSerialization(Node *node)
{
 return node;

}
