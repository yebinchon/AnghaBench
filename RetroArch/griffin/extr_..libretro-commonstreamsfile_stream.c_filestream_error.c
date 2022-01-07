
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error_flag; } ;
typedef TYPE_1__ RFILE ;



int filestream_error(RFILE *stream)
{
   if (stream && stream->error_flag)
      return 1;
   return 0;
}
