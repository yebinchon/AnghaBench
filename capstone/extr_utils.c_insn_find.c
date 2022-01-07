
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int id; } ;
typedef TYPE_1__ insn_map ;


 unsigned short* make_id2insn (TYPE_1__ const*,unsigned int) ;

unsigned short insn_find(const insn_map *insns, unsigned int max, unsigned int id, unsigned short **cache)
{
 if (id > insns[max - 1].id)
  return 0;

 if (*cache == ((void*)0))
  *cache = make_id2insn(insns, max);

 return (*cache)[id];
}
