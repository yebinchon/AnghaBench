
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ end; scalar_t__ read; scalar_t__ start; } ;



void netplay_clear_socket_buffer(struct socket_buffer *sbuf)
{
   sbuf->start = sbuf->read = sbuf->end = 0;
}
