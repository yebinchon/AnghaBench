
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_3__ {scalar_t__ received; scalar_t__ bad_seq; void* max_seq_num; void* base_seq; } ;
typedef TYPE_1__ VC_CONTAINER_TRACK_MODULE_T ;


 scalar_t__ RTP_SEQ_MOD ;

__attribute__((used)) static void init_sequence_number(VC_CONTAINER_TRACK_MODULE_T *t_module,
      uint16_t seq)
{
   t_module->base_seq = seq;
   t_module->max_seq_num = seq;
   t_module->bad_seq = RTP_SEQ_MOD + 1;
   t_module->received = 0;
}
