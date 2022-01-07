
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; unsigned char size; char* spec_proc; char* spec_ea; char* ea_allowed; char* cpus; unsigned char* cycles; int op_mask; int op_match; int * cpu_mode; } ;
typedef TYPE_1__ opcode_struct ;


 int EA_ALLOWED_LENGTH ;
 int ID_INPUT_SEPARATOR ;
 int ID_TABLE_START ;
 int MAX_LINE_LENGTH ;
 int MAX_NAME_LENGTH ;
 int MAX_SPEC_EA_LENGTH ;
 int MAX_SPEC_PROC_LENGTH ;
 int NUM_CPUS ;
 char UNSPECIFIED_CH ;
 int check_atoi (char*,int*) ;
 int check_strsncpy (char*,char*,int) ;
 int error_exit (char*) ;
 scalar_t__ fgetline (char*,int,int ) ;
 int g_input_file ;
 TYPE_1__* g_opcode_input_table ;
 int skip_spaces (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strlen (char*) ;

void populate_table(void)
{
 char* ptr;
 char bitpattern[17];
 opcode_struct* op;
 char buff[MAX_LINE_LENGTH];
 int i;
 int temp;

 buff[0] = 0;


 while(strcmp(buff, ID_TABLE_START) != 0)
  if(fgetline(buff, MAX_LINE_LENGTH, g_input_file) < 0)
   error_exit("Premature EOF while reading table");


 for(op = g_opcode_input_table;;op++)
 {
  if(fgetline(buff, MAX_LINE_LENGTH, g_input_file) < 0)
   error_exit("Premature EOF while reading table");
  if(strlen(buff) == 0)
   continue;

  if(strcmp(buff, ID_INPUT_SEPARATOR) == 0)
   break;


  ptr = buff;


  ptr += skip_spaces(ptr);
  ptr += check_strsncpy(op->name, ptr, MAX_NAME_LENGTH);


  ptr += skip_spaces(ptr);
  ptr += check_atoi(ptr, &temp);
  op->size = (unsigned char)temp;


  ptr += skip_spaces(ptr);
  ptr += check_strsncpy(op->spec_proc, ptr, MAX_SPEC_PROC_LENGTH);


  ptr += skip_spaces(ptr);
  ptr += check_strsncpy(op->spec_ea, ptr, MAX_SPEC_EA_LENGTH);


  ptr += skip_spaces(ptr);
  ptr += check_strsncpy(bitpattern, ptr, 17);


  ptr += skip_spaces(ptr);
  ptr += check_strsncpy(op->ea_allowed, ptr, EA_ALLOWED_LENGTH);


  ptr += skip_spaces(ptr);
  for(i=0;i<NUM_CPUS;i++)
  {
   op->cpu_mode[i] = *ptr++;
   ptr += skip_spaces(ptr);
  }


  for(i=0;i<NUM_CPUS;i++)
  {
   ptr += skip_spaces(ptr);
   if(*ptr == UNSPECIFIED_CH)
   {
    op->cpus[i] = UNSPECIFIED_CH;
    op->cycles[i] = 0;
    ptr++;
   }
   else
   {
    op->cpus[i] = '0' + i;
    ptr += check_atoi(ptr, &temp);
    op->cycles[i] = (unsigned char)temp;
   }
  }


  op->op_mask = 0;
  op->op_match = 0;
  for(i=0;i<16;i++)
  {
   op->op_mask |= (bitpattern[i] != '.') << (15-i);
   op->op_match |= (bitpattern[i] == '1') << (15-i);
  }
 }

 op->name[0] = 0;
}
