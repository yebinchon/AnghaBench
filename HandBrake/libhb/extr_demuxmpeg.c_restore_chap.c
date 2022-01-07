
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ new_chap; } ;
typedef TYPE_2__ hb_psdemux_t ;
struct TYPE_6__ {scalar_t__ new_chap; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;



__attribute__((used)) static inline void restore_chap( hb_psdemux_t *state, hb_buffer_t *buf )
{
    if ( state )
    {
        buf->s.new_chap = state->new_chap;
        state->new_chap = 0;
    }
}
