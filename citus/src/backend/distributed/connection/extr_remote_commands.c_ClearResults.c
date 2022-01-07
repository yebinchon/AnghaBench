
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;


 int ClearResultsInternal (int *,int,int) ;

bool
ClearResults(MultiConnection *connection, bool raiseErrors)
{
 return ClearResultsInternal(connection, raiseErrors, 0);
}
