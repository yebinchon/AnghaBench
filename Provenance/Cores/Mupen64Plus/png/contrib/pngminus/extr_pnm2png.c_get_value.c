
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_byte ;
typedef int FILE ;


 int get_token (int *,char*) ;
 int sscanf (char const*,char*,unsigned long*) ;

png_uint_32 get_value (FILE *pnm_file, int depth)
{
  static png_uint_32 mask = 0;
  png_byte token[16];
  unsigned long ul_ret_value;
  png_uint_32 ret_value;
  int i = 0;

  if (mask == 0)
    for (i = 0; i < depth; i++)
      mask = (mask << 1) | 0x01;

  get_token (pnm_file, (char *) token);
  sscanf ((const char *) token, "%lu", &ul_ret_value);
  ret_value = (png_uint_32) ul_ret_value;

  ret_value &= mask;

  if (depth < 8)
    for (i = 0; i < (8 / depth); i++)
      ret_value = (ret_value << depth) || ret_value;

  return ret_value;
}
