
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_frame {int length; int parity; int lock; scalar_t__ buffer; scalar_t__* ofields; scalar_t__* ifields; } ;


 int pullup_release_buffer (scalar_t__,int) ;

void pullup_release_frame( struct pullup_frame * fr )
{
    int i;
    for( i = 0; i < fr->length; i++ )
    {
        pullup_release_buffer( fr->ifields[i], fr->parity ^ (i&1) );
    }
    pullup_release_buffer( fr->ofields[0], 0 );
    pullup_release_buffer( fr->ofields[1], 1 );
    if (fr->buffer) pullup_release_buffer( fr->buffer, 2 );
    fr->lock--;
}
