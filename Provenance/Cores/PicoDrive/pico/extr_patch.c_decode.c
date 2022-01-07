
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {int addr; int data; } ;


 int genie_decode (char const*,struct patch*) ;
 int hex_decode (char*,struct patch*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void decode(const char* code, struct patch* result)
{
  int len = strlen(code), i, j;
  char code_to_pass[16], *x;
  const char *ad, *da;
  int adl, dal;


  result->addr = result->data = 0;


  if (len == 8)
  {
    genie_decode(code, result);
    return;
  }



    if(len == 9 && code[4] == '-')
    {

      code_to_pass[0] = code[0];
      code_to_pass[1] = code[1];
      code_to_pass[2] = code[2];
      code_to_pass[3] = code[3];
      code_to_pass[4] = code[5];
      code_to_pass[5] = code[6];
      code_to_pass[6] = code[7];
      code_to_pass[7] = code[8];
      code_to_pass[8] = '\0';
      genie_decode(code_to_pass, result);
      return;
    }




  if(!(x = strchr(code, ':'))) goto bad_code;
  ad = code; da = x + 1; adl = x - code; dal = len - adl - 1;


  if(adl == 0 || adl > 6 || dal == 0 || dal > 4) goto bad_code;


  for(i = 0; i < (6 - adl); ++i) code_to_pass[i] = '0';
  for(j = 0; i < 6; ++i, ++j) code_to_pass[i] = ad[j];


  for(i = 6; i < (10 - dal); ++i) code_to_pass[i] = '0';
  for(j = 0; i < 10; ++i, ++j) code_to_pass[i] = da[j];

  code_to_pass[10] = '\0';


  hex_decode(code_to_pass, result);
  return;

bad_code:


  result->data = result->addr = -1;
  return;
}
