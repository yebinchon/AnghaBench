
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ucs4_t ;
typedef int state_t ;
typedef TYPE_1__* conv_t ;
struct TYPE_5__ {int ostate; } ;


 int RET_ILUNI ;
 int RET_TOOSMALL ;
 int abort () ;
 int ascii_wctomb (TYPE_1__*,unsigned char*,int ,int) ;
 int gb2312_wctomb (TYPE_1__*,unsigned char*,int ,int) ;

__attribute__((used)) static int
hz_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  state_t state = conv->ostate;
  unsigned char buf[2];
  int ret;


  ret = ascii_wctomb(conv,buf,wc,1);
  if (ret != RET_ILUNI) {
    if (ret != 1) abort();
    if (buf[0] < 0x80) {
      int count = (state ? 3 : 1);
      if (n < count)
        return RET_TOOSMALL;
      if (state) {
        r[0] = '~';
        r[1] = '}';
        r += 2;
        state = 0;
      }
      r[0] = buf[0];
      conv->ostate = state;
      return count;
    }
  }


  ret = gb2312_wctomb(conv,buf,wc,2);
  if (ret != RET_ILUNI) {
    if (ret != 2) abort();
    if (buf[0] < 0x80 && buf[1] < 0x80) {
      int count = (state ? 2 : 4);
      if (n < count)
        return RET_TOOSMALL;
      if (!state) {
        r[0] = '~';
        r[1] = '{';
        r += 2;
        state = 1;
      }
      r[0] = buf[0];
      r[1] = buf[1];
      conv->ostate = state;
      return count;
    }
  }

  return RET_ILUNI;
}
