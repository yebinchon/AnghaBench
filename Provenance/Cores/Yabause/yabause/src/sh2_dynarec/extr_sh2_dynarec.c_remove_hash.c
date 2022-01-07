
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** hash_table ;

void remove_hash(int vaddr)
{

  int *ht_bin=hash_table[(((vaddr)>>16)^vaddr)&0xFFFF];
  if(ht_bin[2]==vaddr) {
    ht_bin[2]=ht_bin[3]=-1;
  }
  if(ht_bin[0]==vaddr) {
    ht_bin[0]=ht_bin[2];
    ht_bin[1]=ht_bin[3];
    ht_bin[2]=ht_bin[3]=-1;
  }
}
