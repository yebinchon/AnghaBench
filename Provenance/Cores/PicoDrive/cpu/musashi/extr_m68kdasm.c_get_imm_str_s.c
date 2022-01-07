
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 char* make_signed_hex_str_16 (int ) ;
 char* make_signed_hex_str_32 (int ) ;
 char* make_signed_hex_str_8 (int ) ;
 int read_imm_16 () ;
 int read_imm_32 () ;
 int read_imm_8 () ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static char* get_imm_str_s(uint size)
{
 static char str[15];
 if(size == 0)
  sprintf(str, "#%s", make_signed_hex_str_8(read_imm_8()));
 else if(size == 1)
  sprintf(str, "#%s", make_signed_hex_str_16(read_imm_16()));
 else
  sprintf(str, "#%s", make_signed_hex_str_32(read_imm_32()));
 return str;
}
