
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct waitq {int dummy; } ;
typedef int hsize ;


 int P2ROUNDUP (int,int ) ;
 int PAGE_SIZE ;
 scalar_t__ PE_parse_boot_argn (char*,int*,int) ;
 int thread_max ;

__attribute__((used)) static uint32_t waitq_hash_size(void)
{
 uint32_t hsize, queues;

 if (PE_parse_boot_argn("wqsize", &hsize, sizeof(hsize)))
  return (hsize);

 queues = thread_max / 5;
 hsize = P2ROUNDUP(queues * sizeof(struct waitq), PAGE_SIZE);

 return hsize;
}
