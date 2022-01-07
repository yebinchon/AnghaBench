
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isValid; } ;
typedef int HASH_SEQ_STATUS ;
typedef TYPE_1__ ConnParamsHashEntry ;


 int * ConnParamsHash ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

void
InvalidateConnParamsHashEntries(void)
{
 if (ConnParamsHash != ((void*)0))
 {
  ConnParamsHashEntry *entry = ((void*)0);
  HASH_SEQ_STATUS status;

  hash_seq_init(&status, ConnParamsHash);
  while ((entry = (ConnParamsHashEntry *) hash_seq_search(&status)) != ((void*)0))
  {
   entry->isValid = 0;
  }
 }
}
