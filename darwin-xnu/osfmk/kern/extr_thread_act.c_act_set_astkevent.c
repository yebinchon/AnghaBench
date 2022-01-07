
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int kevent_ast_bits; } ;


 int AST_KEVENT ;
 int act_set_ast_async (TYPE_1__*,int ) ;
 int atomic_fetch_or (int *,int ) ;

void
act_set_astkevent(thread_t thread, uint16_t bits)
{
 atomic_fetch_or(&thread->kevent_ast_bits, bits);


 act_set_ast_async(thread, AST_KEVENT);
}
