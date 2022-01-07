
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bufbeg; scalar_t__ bufend; int pos; int* buf; } ;
typedef TYPE_1__ mime_encoder_state ;
struct TYPE_5__ {scalar_t__ easy; TYPE_1__ encstate; } ;
typedef TYPE_2__ curl_mimepart ;
typedef scalar_t__ CURLcode ;


 scalar_t__ Curl_convert_to_network (scalar_t__,char*,size_t) ;
 int MAX_ENCODED_LINE_LENGTH ;
 size_t READ_ERROR ;
 void** base64 ;

__attribute__((used)) static size_t encoder_base64_read(char *buffer, size_t size, bool ateof,
                                curl_mimepart *part)
{
  mime_encoder_state *st = &part->encstate;
  size_t cursize = 0;
  int i;
  char *ptr = buffer;

  while(st->bufbeg < st->bufend) {

    if(st->pos > MAX_ENCODED_LINE_LENGTH - 4) {

      if(size < 2)
        break;
      *ptr++ = '\r';
      *ptr++ = '\n';
      st->pos = 0;
      cursize += 2;
      size -= 2;
    }


    if(size < 4 || st->bufend - st->bufbeg < 3)
      break;


    i = st->buf[st->bufbeg++] & 0xFF;
    i = (i << 8) | (st->buf[st->bufbeg++] & 0xFF);
    i = (i << 8) | (st->buf[st->bufbeg++] & 0xFF);
    *ptr++ = base64[(i >> 18) & 0x3F];
    *ptr++ = base64[(i >> 12) & 0x3F];
    *ptr++ = base64[(i >> 6) & 0x3F];
    *ptr++ = base64[i & 0x3F];
    cursize += 4;
    st->pos += 4;
    size -= 4;
  }


  if(ateof && size >= 4) {

    ptr[2] = ptr[3] = '=';
    i = 0;
    switch(st->bufend - st->bufbeg) {
    case 2:
      i = (st->buf[st->bufbeg + 1] & 0xFF) << 8;

    case 1:
      i |= (st->buf[st->bufbeg] & 0xFF) << 16;
      ptr[0] = base64[(i >> 18) & 0x3F];
      ptr[1] = base64[(i >> 12) & 0x3F];
      if(++st->bufbeg != st->bufend) {
        ptr[2] = base64[(i >> 6) & 0x3F];
        st->bufbeg++;
      }
      cursize += 4;
      st->pos += 4;
      break;
    }
  }
  return cursize;
}
