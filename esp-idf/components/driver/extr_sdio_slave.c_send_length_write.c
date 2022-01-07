
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int reg_slc0_len; } ;
struct TYPE_8__ {TYPE_2__ pkt_len; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_7__ {TYPE_1__ slc0_len_conf; } ;


 int ESP_EARLY_LOGV (int ,char*,int,int ) ;
 int FIELD_TO_VALUE2 (int ,int) ;
 TYPE_4__ HOST ;
 TYPE_3__ SLC ;
 int SLC_SLC0_LEN_WDATA ;
 int SLC_SLC0_LEN_WR ;
 int TAG ;

__attribute__((used)) static inline void send_length_write(uint32_t len)
{
    SLC.slc0_len_conf.val = FIELD_TO_VALUE2(SLC_SLC0_LEN_WDATA, len) | FIELD_TO_VALUE2(SLC_SLC0_LEN_WR, 1);
    ESP_EARLY_LOGV(TAG, "send_length_write: %d, last_len: %08X", len, HOST.pkt_len.reg_slc0_len);
}
