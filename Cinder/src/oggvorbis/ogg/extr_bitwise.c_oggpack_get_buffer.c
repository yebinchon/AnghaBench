
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; } ;
typedef TYPE_1__ oggpack_buffer ;



unsigned char *oggpack_get_buffer(oggpack_buffer *b){
  return(b->buffer);
}
