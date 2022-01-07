
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashIndex ;


 int free (int *) ;
 int hashindex_free_buckets (int *) ;

__attribute__((used)) static void
hashindex_free(HashIndex *index)
{
    hashindex_free_buckets(index);
    free(index);
}
