
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t bufbeg; size_t bufend; int* buf; scalar_t__ pos; } ;
typedef TYPE_1__ mime_encoder_state ;
struct TYPE_6__ {TYPE_1__ encstate; } ;
typedef TYPE_2__ curl_mimepart ;


 scalar_t__ MAX_ENCODED_LINE_LENGTH ;



 char* aschex ;
 int memcpy (char*,char*,size_t) ;
 int* qp_class ;
 int qp_lookahead_eol (TYPE_1__*,int,size_t) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static size_t encoder_qp_read(char *buffer, size_t size, bool ateof,
                              curl_mimepart *part)
{
  mime_encoder_state *st = &part->encstate;
  char *ptr = buffer;
  size_t cursize = 0;
  int softlinebreak;
  char buf[4];





  while(st->bufbeg < st->bufend) {
    size_t len = 1;
    size_t consumed = 1;
    int i = st->buf[st->bufbeg];
    buf[0] = (char) i;
    buf[1] = aschex[(i >> 4) & 0xF];
    buf[2] = aschex[i & 0xF];

    switch(qp_class[st->buf[st->bufbeg] & 0xFF]) {
    case 129:
      break;
    case 128:

      switch(qp_lookahead_eol(st, ateof, 1)) {
      case -1:
        return cursize;
      case 0:
        break;
      default:
        buf[0] = '\x3D';
        len = 3;
        break;
      }
      break;
    case 130:


      switch(qp_lookahead_eol(st, ateof, 0)) {
      case -1:
        return cursize;
      case 1:
        buf[len++] = '\x0A';
        consumed = 2;
        break;
      default:
        buf[0] = '\x3D';
        len = 3;
        break;
      }
      break;
    default:
      buf[0] = '\x3D';
      len = 3;
      break;
    }


    if(buf[len - 1] != '\x0A') {
      softlinebreak = st->pos + len > MAX_ENCODED_LINE_LENGTH;
      if(!softlinebreak && st->pos + len == MAX_ENCODED_LINE_LENGTH) {


        switch(qp_lookahead_eol(st, ateof, consumed)) {
        case -1:
          return cursize;
          break;
        case 0:
          softlinebreak = 1;
          break;
        }
      }
      if(softlinebreak) {
        strcpy(buf, "\x3D\x0D\x0A");
        len = 3;
        consumed = 0;
      }
    }


    if(len > size)
      break;


    memcpy(ptr, buf, len);
    cursize += len;
    ptr += len;
    size -= len;
    st->pos += len;
    if(buf[len - 1] == '\x0A')
      st->pos = 0;
    st->bufbeg += consumed;
  }

  return cursize;
}
