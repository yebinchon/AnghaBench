
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Curl_send_buffer ;


 int * calloc (int,int) ;

Curl_send_buffer *Curl_add_buffer_init(void)
{
  return calloc(1, sizeof(Curl_send_buffer));
}
