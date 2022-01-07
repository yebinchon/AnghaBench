
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int track_end; } ;
typedef TYPE_1__ chdstream_t ;



ssize_t chdstream_get_size(chdstream_t *stream)
{
   return stream->track_end;
}
