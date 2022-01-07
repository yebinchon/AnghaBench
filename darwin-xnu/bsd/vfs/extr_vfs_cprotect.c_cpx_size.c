
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int dummy; } ;



size_t cpx_size(size_t key_size)
{
 size_t size = sizeof(struct cpx) + key_size;





 return size;
}
