
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eof_flag; } ;
typedef TYPE_1__ RFILE ;



int filestream_eof(RFILE *stream)
{
   return stream->eof_flag;
}
