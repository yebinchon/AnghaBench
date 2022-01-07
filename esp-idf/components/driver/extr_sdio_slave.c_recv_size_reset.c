
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ slc0_token1; } ;


 int FIELD_TO_VALUE2 (int ,int) ;
 TYPE_2__ SLC ;
 int SLC_SLC0_TOKEN1_WDATA ;
 int SLC_SLC0_TOKEN1_WR ;

__attribute__((used)) static inline void recv_size_reset(void)
{
    SLC.slc0_token1.val = FIELD_TO_VALUE2(SLC_SLC0_TOKEN1_WDATA, 0) | FIELD_TO_VALUE2(SLC_SLC0_TOKEN1_WR, 1);
}
