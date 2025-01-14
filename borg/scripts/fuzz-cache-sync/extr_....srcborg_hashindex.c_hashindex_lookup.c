
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num_buckets; int bucket_size; } ;
typedef TYPE_1__ HashIndex ;


 int BUCKET_ADDR (TYPE_1__*,int) ;
 scalar_t__ BUCKET_IS_DELETED (TYPE_1__*,int) ;
 scalar_t__ BUCKET_IS_EMPTY (TYPE_1__*,int) ;
 int BUCKET_MARK_DELETED (TYPE_1__*,int) ;
 scalar_t__ BUCKET_MATCHES_KEY (TYPE_1__*,int,unsigned char const*) ;
 int hashindex_index (TYPE_1__*,unsigned char const*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
hashindex_lookup(HashIndex *index, const unsigned char *key, int *start_idx)
{
    int didx = -1;
    int start = hashindex_index(index, key);
    int idx = start;
    for(;;) {
        if(BUCKET_IS_EMPTY(index, idx))
        {
            break;
        }
        if(BUCKET_IS_DELETED(index, idx)) {
            if(didx == -1) {
                didx = idx;
            }
        }
        else if(BUCKET_MATCHES_KEY(index, idx, key)) {
            if (didx != -1) {


                memcpy(BUCKET_ADDR(index, didx), BUCKET_ADDR(index, idx), index->bucket_size);
                BUCKET_MARK_DELETED(index, idx);
                idx = didx;
            }
            return idx;
        }
        idx++;
        if (idx >= index->num_buckets) {
            idx -= index->num_buckets;
        }
        if(idx == start) {
            break;
        }
    }
    if (start_idx != ((void*)0)) {
        (*start_idx) = (didx == -1) ? idx : didx;
    }
    return -1;
}
