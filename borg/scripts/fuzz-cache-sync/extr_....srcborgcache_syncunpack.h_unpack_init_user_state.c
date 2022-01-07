
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expect; scalar_t__ inside_chunks; scalar_t__ level; int * last_error; } ;
typedef TYPE_1__ unpack_user ;


 int expect_item_begin ;

__attribute__((used)) static inline void unpack_init_user_state(unpack_user *u)
{
    u->last_error = ((void*)0);
    u->level = 0;
    u->inside_chunks = 0;
    u->expect = expect_item_begin;
}
