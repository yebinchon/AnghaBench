
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pts; int rdy; } ;
typedef TYPE_2__ hb_mux_t ;
struct TYPE_8__ {scalar_t__ start; } ;
struct TYPE_10__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;


 int hb_bitvec_set (int ,int) ;
 int mf_push (TYPE_2__*,int,TYPE_3__*) ;

__attribute__((used)) static void MoveToInternalFifos( int tk, hb_mux_t *mux, hb_buffer_t * buf )
{




    mf_push( mux, tk, buf );
    if ( buf->s.start >= mux->pts )
    {


        hb_bitvec_set(mux->rdy, tk);
    }
}
