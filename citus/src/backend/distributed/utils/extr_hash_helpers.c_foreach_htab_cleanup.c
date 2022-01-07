
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASH_SEQ_STATUS ;


 int hash_seq_term (int *) ;

void
foreach_htab_cleanup(void *var, HASH_SEQ_STATUS *status)
{
 if ((var) != ((void*)0))
 {
  hash_seq_term(status);
 }
}
