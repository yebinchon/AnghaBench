
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stack_ptr; char* stack; } ;
typedef TYPE_1__ SRTContext ;


 scalar_t__ SRT_STACK_SIZE ;

__attribute__((used)) static int srt_stack_push(SRTContext *s, const char c)
{
    if (s->stack_ptr >= SRT_STACK_SIZE)
        return -1;
    s->stack[s->stack_ptr++] = c;
    return 0;
}
