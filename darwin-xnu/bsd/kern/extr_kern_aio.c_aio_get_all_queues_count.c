
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aio_total_count; } ;


 TYPE_1__ aio_anchor ;

__attribute__((used)) static int
aio_get_all_queues_count( void )
{
 return aio_anchor.aio_total_count;

}
