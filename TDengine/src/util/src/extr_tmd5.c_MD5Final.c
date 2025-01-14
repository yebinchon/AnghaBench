
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int* i; int* buf; void** digest; scalar_t__* in; } ;
typedef TYPE_1__ MD5_CTX ;


 int MD5Update (TYPE_1__*,int ,unsigned int) ;
 int PADDING ;
 int Transform (int*,int*) ;

void MD5Final(MD5_CTX *mdContext) {
  uint32_t in[16];
  int mdi;
  unsigned int i, ii;
  unsigned int padLen;


  in[14] = mdContext->i[0];
  in[15] = mdContext->i[1];


  mdi = (int)((mdContext->i[0] >> 3) & 0x3F);


  padLen = (mdi < 56) ? (56 - mdi) : (120 - mdi);
  MD5Update(mdContext, PADDING, padLen);


  for (i = 0, ii = 0; i < 14; i++, ii += 4)
    in[i] = (((uint32_t)mdContext->in[ii + 3]) << 24) | (((uint32_t)mdContext->in[ii + 2]) << 16) |
            (((uint32_t)mdContext->in[ii + 1]) << 8) | ((uint32_t)mdContext->in[ii]);
  Transform(mdContext->buf, in);


  for (i = 0, ii = 0; i < 4; i++, ii += 4) {
    mdContext->digest[ii] = (uint8_t)(mdContext->buf[i] & 0xFF);
    mdContext->digest[ii + 1] = (uint8_t)((mdContext->buf[i] >> 8) & 0xFF);
    mdContext->digest[ii + 2] = (uint8_t)((mdContext->buf[i] >> 16) & 0xFF);
    mdContext->digest[ii + 3] = (uint8_t)((mdContext->buf[i] >> 24) & 0xFF);
  }
}
