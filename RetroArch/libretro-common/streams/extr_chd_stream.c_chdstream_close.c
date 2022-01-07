
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ chd; struct TYPE_4__* hunkmem; } ;
typedef TYPE_1__ chdstream_t ;


 int chd_close (scalar_t__) ;
 int free (TYPE_1__*) ;

void chdstream_close(chdstream_t *stream)
{
   if (stream)
   {
      if (stream->hunkmem)
         free(stream->hunkmem);
      if (stream->chd)
         chd_close(stream->chd);
      free(stream);
   }
}
