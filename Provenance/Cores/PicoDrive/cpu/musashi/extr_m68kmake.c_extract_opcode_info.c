
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ID_OPHANDLER_NAME ;
 int MAX_NAME_LENGTH ;
 int MAX_SPEC_EA_LENGTH ;
 int MAX_SPEC_PROC_LENGTH ;
 int atoi (char*) ;
 int check_strcncpy (char*,char*,char,int ) ;
 int skip_spaces (char*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;

int extract_opcode_info(char* src, char* name, int* size, char* spec_proc, char* spec_ea)
{
 char* ptr = strstr(src, ID_OPHANDLER_NAME);

 if(ptr == ((void*)0))
  return 0;

 ptr += strlen(ID_OPHANDLER_NAME) + 1;

 ptr += check_strcncpy(name, ptr, ',', MAX_NAME_LENGTH);
 if(*ptr != ',') return 0;
 ptr++;
 ptr += skip_spaces(ptr);

 *size = atoi(ptr);
 ptr = strstr(ptr, ",");
 if(ptr == ((void*)0)) return 0;
    ptr++;
 ptr += skip_spaces(ptr);

 ptr += check_strcncpy(spec_proc, ptr, ',', MAX_SPEC_PROC_LENGTH);
 if(*ptr != ',') return 0;
 ptr++;
 ptr += skip_spaces(ptr);

 ptr += check_strcncpy(spec_ea, ptr, ')', MAX_SPEC_EA_LENGTH);
 if(*ptr != ')') return 0;
 ptr++;
 ptr += skip_spaces(ptr);

 return 1;
}
