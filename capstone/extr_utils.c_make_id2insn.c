
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short id; } ;
typedef TYPE_1__ insn_map ;


 scalar_t__ cs_mem_calloc (unsigned short,int) ;

__attribute__((used)) static unsigned short *make_id2insn(const insn_map *insns, unsigned int size)
{

 unsigned short max_id = insns[size - 1].id;
 unsigned short i;

 unsigned short *cache = (unsigned short *)cs_mem_calloc(max_id + 1, sizeof(*cache));

 for (i = 1; i < size; i++)
  cache[insns[i].id] = i;

 return cache;
}
