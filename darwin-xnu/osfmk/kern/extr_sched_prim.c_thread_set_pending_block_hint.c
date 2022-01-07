
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int block_hint_t ;
struct TYPE_3__ {int pending_block_hint; } ;



void thread_set_pending_block_hint(thread_t thread, block_hint_t block_hint) {
 thread->pending_block_hint = block_hint;
}
