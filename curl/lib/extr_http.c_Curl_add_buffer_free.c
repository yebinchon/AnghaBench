
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buffer; } ;
typedef TYPE_1__ Curl_send_buffer ;


 int free (TYPE_1__*) ;

void Curl_add_buffer_free(Curl_send_buffer **inp)
{
  Curl_send_buffer *in;
  if(!inp)
    return;
  in = *inp;
  if(in) {
    free(in->buffer);
    free(in);
  }
  *inp = ((void*)0);
}
