
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int DefElem ;


 int * makeDefElem (char*,int *,int) ;
 scalar_t__ makeInteger (int) ;

__attribute__((used)) static DefElem *
makeDefElemInt(char *name, int value)
{
 return makeDefElem(name, (Node *) makeInteger(value), -1);
}
