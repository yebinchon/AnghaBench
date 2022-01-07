
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;


 int FinishConnectionListEstablishment (int ) ;
 int list_make1 (int *) ;

void
FinishConnectionEstablishment(MultiConnection *connection)
{
 FinishConnectionListEstablishment(list_make1(connection));
}
