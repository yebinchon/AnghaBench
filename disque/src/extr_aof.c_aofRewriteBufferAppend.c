
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
struct TYPE_8__ {unsigned long free; scalar_t__ used; scalar_t__ buf; } ;
typedef TYPE_2__ aofrwblock ;
struct TYPE_9__ {int aof_pipe_write_data_to_child; int el; int aof_rewrite_buf_blocks; } ;


 int AE_WRITABLE ;
 unsigned long AOF_RW_BUF_BLOCK_SIZE ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int aeCreateFileEvent (int ,int ,int ,int ,int *) ;
 scalar_t__ aeGetFileEvents (int ,int ) ;
 int aofChildWriteDiffData ;
 int aofRewriteBufferSize () ;
 int listAddNodeTail (int ,TYPE_2__*) ;
 TYPE_1__* listLast (int ) ;
 int listLength (int ) ;
 int memcpy (scalar_t__,unsigned char*,unsigned long) ;
 TYPE_4__ server ;
 int serverLog (int,char*,int) ;
 TYPE_2__* zmalloc (int) ;

void aofRewriteBufferAppend(unsigned char *s, unsigned long len) {
    listNode *ln = listLast(server.aof_rewrite_buf_blocks);
    aofrwblock *block = ln ? ln->value : ((void*)0);

    while(len) {


        if (block) {
            unsigned long thislen = (block->free < len) ? block->free : len;
            if (thislen) {
                memcpy(block->buf+block->used, s, thislen);
                block->used += thislen;
                block->free -= thislen;
                s += thislen;
                len -= thislen;
            }
        }

        if (len) {
            int numblocks;

            block = zmalloc(sizeof(*block));
            block->free = AOF_RW_BUF_BLOCK_SIZE;
            block->used = 0;
            listAddNodeTail(server.aof_rewrite_buf_blocks,block);



            numblocks = listLength(server.aof_rewrite_buf_blocks);
            if (((numblocks+1) % 10) == 0) {
                int level = ((numblocks+1) % 100) == 0 ? LL_WARNING :
                                                         LL_NOTICE;
                serverLog(level,"Background AOF buffer size: %lu MB",
                    aofRewriteBufferSize()/(1024*1024));
            }
        }
    }



    if (aeGetFileEvents(server.el,server.aof_pipe_write_data_to_child) == 0) {
        aeCreateFileEvent(server.el, server.aof_pipe_write_data_to_child,
            AE_WRITABLE, aofChildWriteDiffData, ((void*)0));
    }
}
