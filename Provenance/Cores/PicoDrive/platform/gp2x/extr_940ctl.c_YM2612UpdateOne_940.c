
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ym_active_chs; int writebuffsel; int* writebuff0; int* writebuff1; int length; int stereo; } ;
struct TYPE_3__ {int* ym_buffer; } ;


 scalar_t__ CHECK_BUSY (int ) ;
 int JOB940_YM2612UPDATEONE ;
 int PsndLen ;
 int PsndLen_exc_add ;
 int PsndLen_exc_cnt ;
 int add_job_940 (int ) ;
 int memcpy32 (int*,int*,int) ;
 int memset32 (int*,int ,int) ;
 TYPE_2__* shared_ctl ;
 TYPE_1__* shared_data ;
 int wait_busy_940 (int ) ;
 int writebuff_ptr ;

int YM2612UpdateOne_940(int *buffer, int length, int stereo, int is_buf_empty)
{
 int *ym_buf = shared_data->ym_buffer;
 int ym_active_chs;



 if (CHECK_BUSY(JOB940_YM2612UPDATEONE)) wait_busy_940(JOB940_YM2612UPDATEONE);

 ym_active_chs = shared_ctl->ym_active_chs;


 if (is_buf_empty && ym_active_chs) memcpy32(buffer, ym_buf, length<<stereo);
 else memset32(buffer, 0, length<<stereo);

 if (shared_ctl->writebuffsel == 1) {
  shared_ctl->writebuff0[writebuff_ptr & 0xffff] = 0xffff;
 } else {
  shared_ctl->writebuff1[writebuff_ptr & 0xffff] = 0xffff;
 }
 writebuff_ptr = 0;


 if (PsndLen_exc_add) {
  length = PsndLen;
  if (PsndLen_exc_cnt + PsndLen_exc_add >= 0x10000) length++;
 }


 shared_ctl->writebuffsel ^= 1;
 shared_ctl->length = length;
 shared_ctl->stereo = stereo;

 add_job_940(JOB940_YM2612UPDATEONE);

 return ym_active_chs;
}
