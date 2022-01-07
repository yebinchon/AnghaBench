
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 void* get_addr (int) ;
 int** hash_table ;

void *get_addr_ht(u32 vaddr)
{


  int *ht_bin=hash_table[((vaddr>>16)^vaddr)&0xFFFF];

  if(ht_bin[0]==vaddr) return (void *)ht_bin[1];
  if(ht_bin[2]==vaddr) return (void *)ht_bin[3];
  return get_addr(vaddr);
}
