
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiConnection ;
typedef int List ;


 scalar_t__ InCoordinatedTransaction () ;
 int RemoteTransactionsBeginIfNecessary (int *) ;
 int list_free (int *) ;
 int * list_make1 (int *) ;

void
RemoteTransactionBeginIfNecessary(MultiConnection *connection)
{

 if (InCoordinatedTransaction())
 {
  List *connectionList = list_make1(connection);

  RemoteTransactionsBeginIfNecessary(connectionList);
  list_free(connectionList);
 }
}
