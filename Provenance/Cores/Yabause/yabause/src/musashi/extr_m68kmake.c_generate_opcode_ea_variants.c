
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; } ;
typedef TYPE_1__ replace_struct ;
struct TYPE_8__ {int size; int ea_allowed; } ;
typedef TYPE_2__ opcode_struct ;
typedef int body_struct ;
typedef int FILE ;


 int EA_MODE_AI ;
 int EA_MODE_AL ;
 int EA_MODE_AW ;
 int EA_MODE_DI ;
 int EA_MODE_I ;
 int EA_MODE_IX ;
 int EA_MODE_NONE ;
 int EA_MODE_PCDI ;
 int EA_MODE_PCIX ;
 int EA_MODE_PD ;
 int EA_MODE_PD7 ;
 int EA_MODE_PI ;
 int EA_MODE_PI7 ;
 scalar_t__ HAS_EA_AI (int ) ;
 scalar_t__ HAS_EA_AL (int ) ;
 scalar_t__ HAS_EA_AW (int ) ;
 scalar_t__ HAS_EA_DI (int ) ;
 scalar_t__ HAS_EA_I (int ) ;
 scalar_t__ HAS_EA_IX (int ) ;
 scalar_t__ HAS_EA_PCDI (int ) ;
 scalar_t__ HAS_EA_PCIX (int ) ;
 scalar_t__ HAS_EA_PD (int ) ;
 scalar_t__ HAS_EA_PI (int ) ;
 scalar_t__ HAS_NO_EA_MODE (int ) ;
 int generate_opcode_handler (int *,int *,TYPE_1__*,TYPE_2__*,int ) ;

void generate_opcode_ea_variants(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* op)
{
 int old_length = replace->length;


 if(HAS_NO_EA_MODE(op->ea_allowed))
 {
  generate_opcode_handler(filep, body, replace, op, EA_MODE_NONE);
  return;
 }


 if(HAS_EA_AI(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_AI);
 replace->length = old_length;
 if(HAS_EA_PI(op->ea_allowed))
 {
  generate_opcode_handler(filep, body, replace, op, EA_MODE_PI);
  replace->length = old_length;
  if(op->size == 8)
   generate_opcode_handler(filep, body, replace, op, EA_MODE_PI7);
 }
 replace->length = old_length;
 if(HAS_EA_PD(op->ea_allowed))
 {
  generate_opcode_handler(filep, body, replace, op, EA_MODE_PD);
  replace->length = old_length;
  if(op->size == 8)
   generate_opcode_handler(filep, body, replace, op, EA_MODE_PD7);
 }
 replace->length = old_length;
 if(HAS_EA_DI(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_DI);
 replace->length = old_length;
 if(HAS_EA_IX(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_IX);
 replace->length = old_length;
 if(HAS_EA_AW(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_AW);
 replace->length = old_length;
 if(HAS_EA_AL(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_AL);
 replace->length = old_length;
 if(HAS_EA_PCDI(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_PCDI);
 replace->length = old_length;
 if(HAS_EA_PCIX(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_PCIX);
 replace->length = old_length;
 if(HAS_EA_I(op->ea_allowed))
  generate_opcode_handler(filep, body, replace, op, EA_MODE_I);
 replace->length = old_length;
}
