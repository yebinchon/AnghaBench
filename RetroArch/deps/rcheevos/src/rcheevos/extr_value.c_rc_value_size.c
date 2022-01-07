
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int offset; } ;
typedef TYPE_1__ rc_parse_state_t ;


 int RC_ALLOC (int,TYPE_1__*) ;
 int rc_destroy_parse_state (TYPE_1__*) ;
 int rc_init_parse_state (TYPE_1__*,int ,int ,int ) ;
 int rc_parse_value_internal (int,char const**,TYPE_1__*) ;
 int rc_value_t ;
 int self ;

int rc_value_size(const char* memaddr) {
  rc_value_t* self;
  rc_parse_state_t parse;
  rc_init_parse_state(&parse, 0, 0, 0);

  self = RC_ALLOC(rc_value_t, &parse);
  rc_parse_value_internal(self, &memaddr, &parse);

  rc_destroy_parse_state(&parse);
  return parse.offset;
}
