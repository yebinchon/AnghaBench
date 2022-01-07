
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {void** buf; } ;
typedef TYPE_1__ MD5_CTX ;


 int memset (TYPE_1__*,int ,int) ;

void MD5Init(MD5_CTX *mdContext) {
  memset(mdContext, 0, sizeof(MD5_CTX));


  mdContext->buf[0] = (uint32_t)0x67452301;
  mdContext->buf[1] = (uint32_t)0xefcdab89;
  mdContext->buf[2] = (uint32_t)0x98badcfe;
  mdContext->buf[3] = (uint32_t)0x10325476;
}
