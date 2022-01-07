
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trans_stream_backend {int dummy; } ;


 struct trans_stream_backend const pipe_backend ;

const struct trans_stream_backend* trans_stream_get_pipe_backend(void)
{
   return &pipe_backend;
}
