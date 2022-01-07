
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_state {int curlen; int length; unsigned char* buf; int * state; } ;


 int SHA256_BLOCK_SIZE ;
 int WPA_PUT_BE32 (unsigned char*,int ) ;
 int WPA_PUT_BE64 (unsigned char*,int) ;
 int sha256_compress (struct sha256_state*,unsigned char*) ;

__attribute__((used)) static int
sha256_done(struct sha256_state *md, unsigned char *out)
{
 int i;

 if (md->curlen >= sizeof(md->buf))
  return -1;


 md->length += md->curlen * 8;


 md->buf[md->curlen++] = (unsigned char) 0x80;





 if (md->curlen > 56) {
  while (md->curlen < SHA256_BLOCK_SIZE) {
   md->buf[md->curlen++] = (unsigned char) 0;
  }
  sha256_compress(md, md->buf);
  md->curlen = 0;
 }


 while (md->curlen < 56) {
  md->buf[md->curlen++] = (unsigned char) 0;
 }


 WPA_PUT_BE64(md->buf + 56, md->length);
 sha256_compress(md, md->buf);


 for (i = 0; i < 8; i++)
  WPA_PUT_BE32(out + (4 * i), md->state[i]);

 return 0;
}
