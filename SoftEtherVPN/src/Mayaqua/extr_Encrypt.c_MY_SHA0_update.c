
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_4__ {int count; int * buf; } ;
typedef TYPE_1__ MY_SHA0_CTX ;


 int MY_SHA0_Transform (TYPE_1__*) ;

void MY_SHA0_update(MY_SHA0_CTX* ctx, const void* data, int len) {
 int i = (int) (ctx->count & 63);
 const UCHAR* p = (const UCHAR*)data;
 ctx->count += len;
 while (len--) {
  ctx->buf[i++] = *p++;
  if (i == 64) {
   MY_SHA0_Transform(ctx);
   i = 0;
  }
 }
}
