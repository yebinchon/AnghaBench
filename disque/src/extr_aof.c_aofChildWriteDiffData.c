
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_6__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_7__ {scalar_t__ used; scalar_t__ buf; } ;
typedef TYPE_2__ aofrwblock ;
typedef int aeEventLoop ;
struct TYPE_8__ {int aof_rewrite_buf_blocks; int aof_pipe_write_data_to_child; int el; scalar_t__ aof_stop_sending_diff; } ;


 int AE_WRITABLE ;
 int UNUSED (int) ;
 int aeDeleteFileEvent (int ,int ,int ) ;
 int listDelNode (int ,TYPE_1__*) ;
 TYPE_1__* listFirst (int ) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_3__ server ;
 scalar_t__ write (int ,scalar_t__,scalar_t__) ;

void aofChildWriteDiffData(aeEventLoop *el, int fd, void *privdata, int mask) {
    listNode *ln;
    aofrwblock *block;
    ssize_t nwritten;
    UNUSED(el);
    UNUSED(fd);
    UNUSED(privdata);
    UNUSED(mask);

    while(1) {
        ln = listFirst(server.aof_rewrite_buf_blocks);
        block = ln ? ln->value : ((void*)0);
        if (server.aof_stop_sending_diff || !block) {
            aeDeleteFileEvent(server.el,server.aof_pipe_write_data_to_child,
                              AE_WRITABLE);
            return;
        }
        if (block->used > 0) {
            nwritten = write(server.aof_pipe_write_data_to_child,
                             block->buf,block->used);
            if (nwritten <= 0) return;
            memmove(block->buf,block->buf+nwritten,block->used-nwritten);
            block->used -= nwritten;
        }
        if (block->used == 0) listDelNode(server.aof_rewrite_buf_blocks,ln);
    }
}
