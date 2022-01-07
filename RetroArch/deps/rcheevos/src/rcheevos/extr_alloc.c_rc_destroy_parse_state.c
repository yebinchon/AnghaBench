
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ memref; scalar_t__ memref_buffer; } ;
struct TYPE_5__ {TYPE_1__ scratch; } ;
typedef TYPE_2__ rc_parse_state_t ;


 int free (scalar_t__) ;

void rc_destroy_parse_state(rc_parse_state_t* parse)
{
  if (parse->scratch.memref != parse->scratch.memref_buffer)
    free(parse->scratch.memref);
}
