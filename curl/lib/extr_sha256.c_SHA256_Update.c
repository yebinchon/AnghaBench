
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_state {int curlen; unsigned long length; unsigned char* buf; } ;


 unsigned long CURLMIN (unsigned long,unsigned long) ;
 unsigned long block_size ;
 int memcpy (unsigned char*,unsigned char const*,unsigned long) ;
 scalar_t__ sha256_compress (struct sha256_state*,unsigned char*) ;

__attribute__((used)) static int SHA256_Update(struct sha256_state *md,
                         const unsigned char *in,
                         unsigned long inlen)
{
  unsigned long n;

  if(md->curlen > sizeof(md->buf))
    return -1;
  while(inlen > 0) {
    if(md->curlen == 0 && inlen >= 64) {
      if(sha256_compress(md, (unsigned char *)in) < 0)
        return -1;
      md->length += 64 * 8;
      in += 64;
      inlen -= 64;
    }
    else {
      n = CURLMIN(inlen, (64 - md->curlen));
      memcpy(md->buf + md->curlen, in, n);
      md->curlen += n;
      in += n;
      inlen -= n;
      if(md->curlen == 64) {
        if(sha256_compress(md, md->buf) < 0)
          return -1;
        md->length += 8 * 64;
        md->curlen = 0;
      }
    }
  }
  return 0;
}
