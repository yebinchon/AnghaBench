
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cc_rand_generate (void*,size_t) ;

int random_buf(void *buf, size_t buflen)
{
 return cc_rand_generate(buf, buflen);
}
