
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct AVTreeNode {scalar_t__ logical_pos; int size; scalar_t__ physical_pos; } ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {scalar_t__ logical_pos; int root; scalar_t__ cache_pos; int fd; } ;
typedef TYPE_2__ Context ;
typedef struct AVTreeNode CacheEntry ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int SEEK_END ;
 int av_free (struct AVTreeNode*) ;
 int av_log (TYPE_1__*,int ,char*) ;
 struct AVTreeNode* av_malloc (int) ;
 struct AVTreeNode* av_tree_find (int ,scalar_t__*,int ,void**) ;
 struct AVTreeNode* av_tree_insert (int *,struct AVTreeNode*,int ,struct AVTreeNode**) ;
 struct AVTreeNode* av_tree_node_alloc () ;
 int cmp ;
 int errno ;
 scalar_t__ lseek (int ,int ,int ) ;
 int write (int ,unsigned char const*,int) ;

__attribute__((used)) static int add_entry(URLContext *h, const unsigned char *buf, int size)
{
    Context *c= h->priv_data;
    int64_t pos = -1;
    int ret;
    CacheEntry *entry = ((void*)0), *next[2] = {((void*)0), ((void*)0)};
    CacheEntry *entry_ret;
    struct AVTreeNode *node = ((void*)0);


    pos = lseek(c->fd, 0, SEEK_END);
    if (pos < 0) {
        ret = AVERROR(errno);
        av_log(h, AV_LOG_ERROR, "seek in cache failed\n");
        goto fail;
    }
    c->cache_pos = pos;

    ret = write(c->fd, buf, size);
    if (ret < 0) {
        ret = AVERROR(errno);
        av_log(h, AV_LOG_ERROR, "write in cache failed\n");
        goto fail;
    }
    c->cache_pos += ret;

    entry = av_tree_find(c->root, &c->logical_pos, cmp, (void**)next);

    if (!entry)
        entry = next[0];

    if (!entry ||
        entry->logical_pos + entry->size != c->logical_pos ||
        entry->physical_pos + entry->size != pos
    ) {
        entry = av_malloc(sizeof(*entry));
        node = av_tree_node_alloc();
        if (!entry || !node) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        entry->logical_pos = c->logical_pos;
        entry->physical_pos = pos;
        entry->size = ret;

        entry_ret = av_tree_insert(&c->root, entry, cmp, &node);
        if (entry_ret && entry_ret != entry) {
            ret = -1;
            av_log(h, AV_LOG_ERROR, "av_tree_insert failed\n");
            goto fail;
        }
    } else
        entry->size += ret;

    return 0;
fail:


    av_free(entry);
    av_free(node);
    return ret;
}
