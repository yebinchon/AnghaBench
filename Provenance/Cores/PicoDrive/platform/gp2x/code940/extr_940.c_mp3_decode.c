
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mp3_offs; int mp3_len; size_t mp3_buffsel; int mp3_lasterr; int mp3_errors; } ;
struct TYPE_3__ {int * mp3_buffer; int mp3dec; } ;


 int ERR_MP3_INDATA_UNDERFLOW ;
 int ERR_MP3_MAINDATA_UNDERFLOW ;
 int MP3Decode (int ,unsigned char**,int*,int ,int ) ;
 unsigned char* mp3_data ;
 int mp3_find_sync_word (unsigned char*,int) ;
 int set_if_not_changed (int*,int,int) ;
 TYPE_2__* shared_ctl ;
 TYPE_1__* shared_data ;

__attribute__((used)) static void mp3_decode(void)
{
 int mp3_offs = shared_ctl->mp3_offs;
 unsigned char *readPtr = mp3_data + mp3_offs;
 int bytesLeft = shared_ctl->mp3_len - mp3_offs;
 int offset;
 int retries = 0, err;

 if (bytesLeft <= 0) return;

 for (retries = 0; retries < 2; retries++)
 {
  offset = mp3_find_sync_word(readPtr, bytesLeft);
  if (offset < 0)
   goto set_eof;

  readPtr += offset;
  bytesLeft -= offset;

  err = MP3Decode(shared_data->mp3dec, &readPtr, &bytesLeft,
    shared_data->mp3_buffer[shared_ctl->mp3_buffsel], 0);
  if (err) {
   if (err == ERR_MP3_MAINDATA_UNDERFLOW)

    continue;

   if (err == ERR_MP3_INDATA_UNDERFLOW)
    goto set_eof;

   if (err <= -6 && err >= -12) {


    readPtr++;
    bytesLeft--;
    continue;
   }
   shared_ctl->mp3_errors++;
   shared_ctl->mp3_lasterr = err;
  }
  break;
 }

 set_if_not_changed(&shared_ctl->mp3_offs, mp3_offs, readPtr - mp3_data);
 return;

set_eof:
 set_if_not_changed(&shared_ctl->mp3_offs, mp3_offs, shared_ctl->mp3_len);
}
