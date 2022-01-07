
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_4__ {scalar_t__ used; } ;
typedef TYPE_1__ aofrwblock ;
struct TYPE_5__ {int aof_rewrite_buf_blocks; } ;


 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 TYPE_2__ server ;

unsigned long aofRewriteBufferSize(void) {
    listNode *ln;
    listIter li;
    unsigned long size = 0;

    listRewind(server.aof_rewrite_buf_blocks,&li);
    while((ln = listNext(&li))) {
        aofrwblock *block = listNodeValue(ln);
        size += block->used;
    }
    return size;
}
