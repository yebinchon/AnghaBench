
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t bufend; size_t bufbeg; int buf; } ;
typedef TYPE_1__ mime_encoder_state ;
struct TYPE_5__ {TYPE_1__ encstate; } ;
typedef TYPE_2__ curl_mimepart ;


 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static size_t encoder_nop_read(char *buffer, size_t size, bool ateof,
                               curl_mimepart *part)
{
  mime_encoder_state *st = &part->encstate;
  size_t insize = st->bufend - st->bufbeg;

  (void) ateof;

  if(size > insize)
    size = insize;
  if(size)
    memcpy(buffer, st->buf, size);
  st->bufbeg += size;
  return size;
}
