
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user; scalar_t__ top; scalar_t__ trail; int cs; } ;
typedef TYPE_1__ unpack_context ;


 int CS_HEADER ;
 int unpack_init_user_state (int *) ;

__attribute__((used)) static inline void unpack_init(unpack_context* ctx)
{
    ctx->cs = CS_HEADER;
    ctx->trail = 0;
    ctx->top = 0;
    unpack_init_user_state(&ctx->user);
}
