
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* count; } ;
typedef TYPE_1__ MD5_CTX ;



__attribute__((used)) static uint64_t getCount(MD5_CTX *ctx)
{
 return ( (((uint64_t)ctx->count[0])<<32) | (ctx->count[1]) );
}
