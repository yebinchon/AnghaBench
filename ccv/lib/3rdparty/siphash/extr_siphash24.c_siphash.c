
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int SIPROUND ;
 int TRACE ;
 int U64TO8_LE (int *,int) ;
 int U8TO64_LE (int const*) ;
 int cROUNDS ;
 int dROUNDS ;

int siphash(uint8_t *out, const uint8_t *in, uint64_t inlen, const uint8_t *k) {

  uint64_t v0 = 0x736f6d6570736575ULL;
  uint64_t v1 = 0x646f72616e646f6dULL;
  uint64_t v2 = 0x6c7967656e657261ULL;
  uint64_t v3 = 0x7465646279746573ULL;
  uint64_t b;
  uint64_t k0 = U8TO64_LE(k);
  uint64_t k1 = U8TO64_LE(k + 8);
  uint64_t m;
  int i;
  const uint8_t *end = in + inlen - (inlen % sizeof(uint64_t));
  const int left = inlen & 7;
  b = ((uint64_t)inlen) << 56;
  v3 ^= k1;
  v2 ^= k0;
  v1 ^= k1;
  v0 ^= k0;





  for (; in != end; in += 8) {
    m = U8TO64_LE(in);
    v3 ^= m;

    TRACE;
    for (i = 0; i < cROUNDS; ++i)
      SIPROUND;

    v0 ^= m;
  }

  switch (left) {
  case 7:
    b |= ((uint64_t)in[6]) << 48;
  case 6:
    b |= ((uint64_t)in[5]) << 40;
  case 5:
    b |= ((uint64_t)in[4]) << 32;
  case 4:
    b |= ((uint64_t)in[3]) << 24;
  case 3:
    b |= ((uint64_t)in[2]) << 16;
  case 2:
    b |= ((uint64_t)in[1]) << 8;
  case 1:
    b |= ((uint64_t)in[0]);
    break;
  case 0:
    break;
  }

  v3 ^= b;

  TRACE;
  for (i = 0; i < cROUNDS; ++i)
    SIPROUND;

  v0 ^= b;


  v2 ^= 0xff;




  TRACE;
  for (i = 0; i < dROUNDS; ++i)
    SIPROUND;

  b = v0 ^ v1 ^ v2 ^ v3;
  U64TO8_LE(out, b);
  return 0;
}
