
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc_parse_state_t ;
typedef int rc_operand_t ;


 int rc_parse_operand_term (int *,char const**,int *) ;
 int rc_parse_operand_trigger (int *,char const**,int *) ;

int rc_parse_operand(rc_operand_t* self, const char** memaddr, int is_trigger, rc_parse_state_t* parse) {
  if (is_trigger) {
    return rc_parse_operand_trigger(self, memaddr, parse);
  }
  else {
    return rc_parse_operand_term(self, memaddr, parse);
  }
}
