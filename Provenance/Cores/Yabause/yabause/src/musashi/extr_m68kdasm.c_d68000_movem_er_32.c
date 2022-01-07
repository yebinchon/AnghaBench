
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 int read_imm_16 () ;
 int sprintf (char*,char*,...) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void d68000_movem_er_32(void)
{
 uint data = read_imm_16();
 char buffer[40];
 uint first;
 uint run_length;
 uint i;

 buffer[0] = 0;
 for(i=0;i<8;i++)
 {
  if(data&(1<<i))
  {
   first = i;
   run_length = 0;
   while(i<7 && (data&(1<<(i+1))))
   {
    i++;
    run_length++;
   }
   if(buffer[0] != 0)
    strcat(buffer, "/");
   sprintf(buffer+strlen(buffer), "D%d", first);
   if(run_length > 0)
    sprintf(buffer+strlen(buffer), "-D%d", first + run_length);
  }
 }
 for(i=0;i<8;i++)
 {
  if(data&(1<<(i+8)))
  {
   first = i;
   run_length = 0;
   while(i<7 && (data&(1<<(i+8+1))))
   {
    i++;
    run_length++;
   }
   if(buffer[0] != 0)
    strcat(buffer, "/");
   sprintf(buffer+strlen(buffer), "A%d", first);
   if(run_length > 0)
    sprintf(buffer+strlen(buffer), "-A%d", first + run_length);
  }
 }
 sprintf(g_dasm_str, "movem.l %s, %s", get_ea_mode_str_32(g_cpu_ir), buffer);
}
