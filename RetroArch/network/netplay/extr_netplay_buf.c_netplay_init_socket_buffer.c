
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {unsigned char* data; size_t bufsz; scalar_t__ end; scalar_t__ read; scalar_t__ start; } ;


 scalar_t__ malloc (size_t) ;

bool netplay_init_socket_buffer(struct socket_buffer *sbuf, size_t size)
{
   sbuf->data = (unsigned char*)malloc(size);
   if (!sbuf->data)
      return 0;
   sbuf->bufsz = size;
   sbuf->start = sbuf->read = sbuf->end = 0;
   return 1;
}
