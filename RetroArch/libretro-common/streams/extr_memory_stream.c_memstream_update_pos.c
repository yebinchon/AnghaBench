
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; scalar_t__ max_ptr; } ;
typedef TYPE_1__ memstream_t ;



__attribute__((used)) static void memstream_update_pos(memstream_t *stream)
{
   if (stream && stream->ptr > stream->max_ptr)
      stream->max_ptr = stream->ptr;
}
