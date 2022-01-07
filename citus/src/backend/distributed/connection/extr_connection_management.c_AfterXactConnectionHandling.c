
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASH_SEQ_STATUS ;
typedef int ConnectionHashEntry ;


 int AfterXactHostConnectionHandling (int *,int) ;
 int ConnectionHash ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;

void
AfterXactConnectionHandling(bool isCommit)
{
 HASH_SEQ_STATUS status;
 ConnectionHashEntry *entry;

 hash_seq_init(&status, ConnectionHash);
 while ((entry = (ConnectionHashEntry *) hash_seq_search(&status)) != 0)
 {
  AfterXactHostConnectionHandling(entry, isCommit);






 }
}
