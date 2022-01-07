
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cfi_tail_drop_cnt; } ;
struct TYPE_3__ {scalar_t__ cfi_tail_drop_cnt; } ;
struct cfil_info {TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; } ;


 int CFIL_LOG (int ,char*,int ,int ,scalar_t__,scalar_t__) ;
 int LOG_ERR ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 int cfil_udp_gc_mbuf_cnt_max ;
 int cfil_udp_gc_mbuf_num_max ;

bool
cfil_info_buffer_threshold_exceeded(struct cfil_info *cfil_info)
{
 if (cfil_info == ((void*)0))
  return 0;




 if (cfil_info->cfi_snd.cfi_tail_drop_cnt ||
  cfil_info->cfi_rcv.cfi_tail_drop_cnt) {
  return 1;
 }

 return 0;
}
