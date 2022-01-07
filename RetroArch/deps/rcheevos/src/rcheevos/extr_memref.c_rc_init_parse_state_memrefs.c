
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** first_memref; } ;
typedef TYPE_1__ rc_parse_state_t ;
typedef int rc_memref_value_t ;



void rc_init_parse_state_memrefs(rc_parse_state_t* parse, rc_memref_value_t** memrefs)
{
  parse->first_memref = memrefs;
  *memrefs = 0;
}
