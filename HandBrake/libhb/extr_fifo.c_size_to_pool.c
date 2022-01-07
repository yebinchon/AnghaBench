
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hb_fifo_t ;
struct TYPE_2__ {int ** pool; } ;


 int BUFFER_POOL_FIRST ;
 int BUFFER_POOL_LAST ;
 TYPE_1__ buffers ;

__attribute__((used)) static hb_fifo_t *size_to_pool( int size )
{

    int i;
    for ( i = BUFFER_POOL_FIRST; i <= BUFFER_POOL_LAST; ++i )
    {
        if ( size <= (1 << i) )
        {
            return buffers.pool[i];
        }
    }

    return ((void*)0);
}
