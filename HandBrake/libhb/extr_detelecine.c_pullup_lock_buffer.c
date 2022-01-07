
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_buffer {int * lock; } ;



struct pullup_buffer * pullup_lock_buffer( struct pullup_buffer * b,
                                           int parity )
{
    if( !b ) return 0;
    if( (parity+1) & 1 ) b->lock[0]++;
    if( (parity+1) & 2 ) b->lock[1]++;

    return b;
}
