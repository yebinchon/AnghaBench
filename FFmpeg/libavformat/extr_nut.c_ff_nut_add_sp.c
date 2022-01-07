
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct AVTreeNode {void* ts; void* back_ptr; void* pos; } ;
typedef void* int64_t ;
struct TYPE_3__ {int syncpoints; int sp_count; } ;
typedef struct AVTreeNode Syncpoint ;
typedef TYPE_1__ NUTContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (struct AVTreeNode*) ;
 int av_freep (struct AVTreeNode**) ;
 struct AVTreeNode* av_mallocz (int) ;
 int av_tree_insert (int *,struct AVTreeNode*,int ,struct AVTreeNode**) ;
 struct AVTreeNode* av_tree_node_alloc () ;
 int ff_nut_sp_pos_cmp ;

int ff_nut_add_sp(NUTContext *nut, int64_t pos, int64_t back_ptr, int64_t ts)
{
    Syncpoint *sp = av_mallocz(sizeof(Syncpoint));
    struct AVTreeNode *node = av_tree_node_alloc();

    if (!sp || !node) {
        av_freep(&sp);
        av_freep(&node);
        return AVERROR(ENOMEM);
    }

    nut->sp_count++;

    sp->pos = pos;
    sp->back_ptr = back_ptr;
    sp->ts = ts;
    av_tree_insert(&nut->syncpoints, sp, ff_nut_sp_pos_cmp, &node);
    if (node) {
        av_free(sp);
        av_free(node);
    }

    return 0;
}
