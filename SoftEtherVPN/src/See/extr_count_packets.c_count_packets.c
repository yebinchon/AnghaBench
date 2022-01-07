
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_4__ {int packets; int bytes; } ;
typedef TYPE_1__ c_p_data ;
struct TYPE_5__ {int key_len; } ;
typedef TYPE_2__ TME_DATA ;
typedef int MEM_TYPE ;


 scalar_t__ TME_SUCCESS ;

uint32 count_packets(uint8 *block, uint32 pkt_size, TME_DATA *data, MEM_TYPE *mem_ex, uint8 *mem_data)
{

 c_p_data *counters=(c_p_data*)(block+data->key_len*4);

 counters->bytes+=pkt_size;
 counters->packets++;

 return TME_SUCCESS;

}
