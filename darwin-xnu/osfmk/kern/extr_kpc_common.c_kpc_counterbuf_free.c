
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COUNTERBUF_SIZE ;
 int kfree (int *,int ) ;

void
kpc_counterbuf_free(uint64_t *buf)
{
 if (buf) {
  kfree(buf, COUNTERBUF_SIZE);
 }
}
