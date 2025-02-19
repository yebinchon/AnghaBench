
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_LEN ;
 int BUF_MASK ;
 scalar_t__ buf ;
 int buf_r ;
 int buf_w ;
 int memcpy (scalar_t__,void const*,int) ;

int sndout_sdl_write_nb(const void *samples, int len)
{
 int maxlen = (buf_r - buf_w - 2) & BUF_MASK;
 int buf_left = BUF_LEN - buf_w;
 int retval;

 len /= 2;
 if (len > maxlen)

  len = maxlen;
 if (len == 0)

  return 0;

 retval = len;

 if (len > buf_left) {
  memcpy(buf + buf_w, samples, buf_left * 2);
  samples = (const short *)samples + buf_left;
  len -= buf_left;
  buf_w = 0;
 }
 memcpy(buf + buf_w, samples, len * 2);
 buf_w = (buf_w + len) & BUF_MASK;

 return retval;
}
