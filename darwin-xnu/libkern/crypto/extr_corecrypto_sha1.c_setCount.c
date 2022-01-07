
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int * b64; } ;
struct TYPE_5__ {TYPE_1__ c; } ;
typedef TYPE_2__ SHA1_CTX ;



__attribute__((used)) static void setCount(SHA1_CTX *ctx, uint64_t count)
{
 ctx->c.b64[0]=count;
}
