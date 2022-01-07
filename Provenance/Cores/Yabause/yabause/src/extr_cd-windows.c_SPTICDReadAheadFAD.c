
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int enable_read_ahead; scalar_t__ error_flag; scalar_t__ num_sectors_read; int FAD; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__ cd_buf ;
 int cd_cs ;

void SPTICDReadAheadFAD(u32 FAD) {
 EnterCriticalSection(&cd_cs);
 cd_buf.FAD = FAD;
 cd_buf.num_sectors_read = 0;
 cd_buf.error_flag = 0;
 cd_buf.enable_read_ahead = 1;
 LeaveCriticalSection(&cd_cs);
}
