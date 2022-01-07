
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ chdstream_t ;



uint64_t chdstream_tell(chdstream_t *stream)
{
   return stream->offset;
}
