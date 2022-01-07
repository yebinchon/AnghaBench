
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;
typedef int CopyConnectionState ;


 int * NIL ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int * lappend (int *,int *) ;

__attribute__((used)) static List *
ConnectionStateList(HTAB *connectionStateHash)
{
 List *connectionStateList = NIL;
 HASH_SEQ_STATUS status;
 CopyConnectionState *connectionState = ((void*)0);

 hash_seq_init(&status, connectionStateHash);

 connectionState = (CopyConnectionState *) hash_seq_search(&status);
 while (connectionState != ((void*)0))
 {
  connectionStateList = lappend(connectionStateList, connectionState);

  connectionState = (CopyConnectionState *) hash_seq_search(&status);
 }

 return connectionStateList;
}
