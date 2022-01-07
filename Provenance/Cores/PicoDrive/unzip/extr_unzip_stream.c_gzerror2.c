
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_err; } ;
typedef TYPE_1__ gz_stream ;
typedef scalar_t__ gzFile ;


 int Z_STREAM_ERROR ;

int gzerror2(gzFile file)
{
    gz_stream *s = (gz_stream*)file;

    if (s == ((void*)0))
        return Z_STREAM_ERROR;

    return s->z_err;
}
