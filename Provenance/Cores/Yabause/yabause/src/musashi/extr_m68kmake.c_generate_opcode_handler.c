
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int replace_struct ;
typedef int opcode_struct ;
typedef int body_struct ;
struct TYPE_2__ {char* ea_add; } ;
typedef int FILE ;


 int EA_MODE_NONE ;
 int ID_OPHANDLER_EA_AY_16 ;
 int ID_OPHANDLER_EA_AY_32 ;
 int ID_OPHANDLER_EA_AY_8 ;
 int ID_OPHANDLER_OPER_AY_16 ;
 int ID_OPHANDLER_OPER_AY_32 ;
 int ID_OPHANDLER_OPER_AY_8 ;
 int MAX_LINE_LENGTH ;
 int add_opcode_output_table_entry (int *,char*) ;
 int add_replace_string (int *,int ,char*) ;
 int free (int *) ;
 TYPE_1__* g_ea_info_table ;
 int g_num_functions ;
 int g_prototype_file ;
 int get_base_name (char*,int *) ;
 int * malloc (int) ;
 int set_opcode_struct (int *,int *,int) ;
 int sprintf (char*,char*,char*) ;
 int write_body (int *,int *,int *) ;
 int write_function_name (int *,char*) ;
 int write_prototype (int ,char*) ;

void generate_opcode_handler(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* opinfo, int ea_mode)
{
 char str[MAX_LINE_LENGTH+1];
 opcode_struct* op = malloc(sizeof(opcode_struct));


 set_opcode_struct(opinfo, op, ea_mode);
 get_base_name(str, op);
 write_prototype(g_prototype_file, str);
 add_opcode_output_table_entry(op, str);
 write_function_name(filep, str);


 if(ea_mode != EA_MODE_NONE)
 {
  sprintf(str, "EA_%s_8()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_EA_AY_8, str);
  sprintf(str, "EA_%s_16()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_EA_AY_16, str);
  sprintf(str, "EA_%s_32()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_EA_AY_32, str);
  sprintf(str, "OPER_%s_8()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_OPER_AY_8, str);
  sprintf(str, "OPER_%s_16()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_OPER_AY_16, str);
  sprintf(str, "OPER_%s_32()", g_ea_info_table[ea_mode].ea_add);
  add_replace_string(replace, ID_OPHANDLER_OPER_AY_32, str);
 }


 write_body(filep, body, replace);
 g_num_functions++;
 free(op);
}
