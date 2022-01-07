
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int OSLOG_NUM_STREAM_ENTRIES ;
 int OSLOG_STREAM_BUF_SIZE ;
 int oslog_stream_buf_size ;
 int oslog_stream_num_entries ;
 int printf (char*,int,int) ;

void oslog_setsize(int size)
{
 uint16_t scale = 0;


 if (size <= OSLOG_STREAM_BUF_SIZE) {
  return;
 }

 scale = (uint16_t) (size / OSLOG_STREAM_BUF_SIZE);

 oslog_stream_buf_size = size;
 oslog_stream_num_entries = scale * OSLOG_NUM_STREAM_ENTRIES;
 printf("oslog_setsize: new buffer size = %d, new num entries= %d\n", oslog_stream_buf_size, oslog_stream_num_entries);
}
