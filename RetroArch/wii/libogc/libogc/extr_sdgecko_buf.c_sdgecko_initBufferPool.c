
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct TYPE_3__* next; } ;


 int BUF_POOL_CNT ;
 TYPE_1__* s_buf ;
 TYPE_1__* s_freepool ;

void sdgecko_initBufferPool()
{
 u32 i;
 for(i=0;i<BUF_POOL_CNT-1;++i) {
  s_buf[i].next = s_buf+i+1;
 }
 s_buf[i].next = ((void*)0);
 s_freepool = s_buf;
}
