
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int PATH_MAX_LENGTH ;
 int strlcat (char*,char*,size_t) ;
 int utf8cpy (char*,int,int ,unsigned int) ;
 int utf8skip (char const*,unsigned int) ;

__attribute__((used)) static void build_ticker_loop_string(
      const char* src_str, const char *spacer,
      unsigned char_offset1, unsigned num_chars1,
      unsigned char_offset2, unsigned num_chars2,
      unsigned char_offset3, unsigned num_chars3,
      char *dest_str, size_t dest_str_len)
{
   char tmp[PATH_MAX_LENGTH];

   tmp[0] = '\0';
   dest_str[0] = '\0';


   if (num_chars1 > 0)
   {
      utf8cpy(
            dest_str, dest_str_len,
            utf8skip(src_str, char_offset1), num_chars1);
   }


   if (num_chars2 > 0)
   {
      utf8cpy(
            tmp, sizeof(tmp),
            utf8skip(spacer, char_offset2), num_chars2);

      strlcat(dest_str, tmp, dest_str_len);
   }


   if (num_chars3 > 0)
   {
      utf8cpy(
            tmp, sizeof(tmp),
            utf8skip(src_str, char_offset3), num_chars3);

      strlcat(dest_str, tmp, dest_str_len);
   }
}
