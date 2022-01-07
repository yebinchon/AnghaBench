
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ data; } ;


 int free (scalar_t__) ;

void netplay_deinit_socket_buffer(struct socket_buffer *sbuf)
{
   if (sbuf->data)
      free(sbuf->data);
}
