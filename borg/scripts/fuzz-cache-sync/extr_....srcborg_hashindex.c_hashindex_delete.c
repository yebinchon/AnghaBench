
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_entries; scalar_t__ lower_limit; int num_buckets; } ;
typedef TYPE_1__ HashIndex ;


 int BUCKET_MARK_DELETED (TYPE_1__*,int) ;
 int hashindex_lookup (TYPE_1__*,unsigned char const*,int *) ;
 int hashindex_resize (TYPE_1__*,int ) ;
 int shrink_size (int ) ;

__attribute__((used)) static int
hashindex_delete(HashIndex *index, const unsigned char *key)
{
    int idx = hashindex_lookup(index, key, ((void*)0));
    if (idx < 0) {
        return -1;
    }
    BUCKET_MARK_DELETED(index, idx);
    index->num_entries -= 1;
    if(index->num_entries < index->lower_limit) {
        if(!hashindex_resize(index, shrink_size(index->num_buckets))) {
            return 0;
        }
    }
    return 1;
}
