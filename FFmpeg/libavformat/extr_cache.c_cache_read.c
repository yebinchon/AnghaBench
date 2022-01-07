
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {scalar_t__ logical_pos; scalar_t__ size; scalar_t__ physical_pos; } ;
struct TYPE_9__ {scalar_t__ logical_pos; scalar_t__ cache_pos; scalar_t__ inner_pos; int is_true_eof; scalar_t__ end; int cache_miss; int inner; int cache_hit; int fd; int root; } ;
typedef TYPE_2__ Context ;
typedef TYPE_3__ CacheEntry ;


 scalar_t__ AVERROR_EOF ;
 int AV_LOG_ERROR ;
 scalar_t__ FFMAX (scalar_t__,scalar_t__) ;
 int FFMIN (int,scalar_t__) ;
 int SEEK_SET ;
 int add_entry (TYPE_1__*,unsigned char*,scalar_t__) ;
 int av_assert0 (int) ;
 int av_log (TYPE_1__*,int ,char*) ;
 TYPE_3__* av_tree_find (int ,scalar_t__*,int ,void**) ;
 int cmp ;
 scalar_t__ ffurl_read (int ,unsigned char*,int) ;
 scalar_t__ ffurl_seek (int ,scalar_t__,int ) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 scalar_t__ read (int ,unsigned char*,int ) ;

__attribute__((used)) static int cache_read(URLContext *h, unsigned char *buf, int size)
{
    Context *c= h->priv_data;
    CacheEntry *entry, *next[2] = {((void*)0), ((void*)0)};
    int64_t r;

    entry = av_tree_find(c->root, &c->logical_pos, cmp, (void**)next);

    if (!entry)
        entry = next[0];

    if (entry) {
        int64_t in_block_pos = c->logical_pos - entry->logical_pos;
        av_assert0(entry->logical_pos <= c->logical_pos);
        if (in_block_pos < entry->size) {
            int64_t physical_target = entry->physical_pos + in_block_pos;

            if (c->cache_pos != physical_target) {
                r = lseek(c->fd, physical_target, SEEK_SET);
            } else
                r = c->cache_pos;

            if (r >= 0) {
                c->cache_pos = r;
                r = read(c->fd, buf, FFMIN(size, entry->size - in_block_pos));
            }

            if (r > 0) {
                c->cache_pos += r;
                c->logical_pos += r;
                c->cache_hit ++;
                return r;
            }
        }
    }



    if (c->logical_pos != c->inner_pos) {
        r = ffurl_seek(c->inner, c->logical_pos, SEEK_SET);
        if (r<0) {
            av_log(h, AV_LOG_ERROR, "Failed to perform internal seek\n");
            return r;
        }
        c->inner_pos = r;
    }

    r = ffurl_read(c->inner, buf, size);
    if (r == AVERROR_EOF && size>0) {
        c->is_true_eof = 1;
        av_assert0(c->end >= c->logical_pos);
    }
    if (r<=0)
        return r;
    c->inner_pos += r;

    c->cache_miss ++;

    add_entry(h, buf, r);
    c->logical_pos += r;
    c->end = FFMAX(c->end, c->logical_pos);

    return r;
}
