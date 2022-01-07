
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_uint8 ;
typedef int stbtt_uint32 ;
typedef int stbtt_int32 ;


 scalar_t__ stbtt_tag (int *,char const*) ;
 int ttULONG (int *) ;
 int ttUSHORT (int *) ;

__attribute__((used)) static stbtt_uint32 stbtt__find_table(stbtt_uint8 *data, stbtt_uint32 fontstart, const char *tag)
{
   stbtt_int32 i;
   stbtt_int32 num_tables = ttUSHORT(data+fontstart+4);
   stbtt_uint32 tabledir = fontstart + 12;

   for (i=0; i < num_tables; ++i)
   {
      stbtt_uint32 loc = tabledir + 16*i;
      if (stbtt_tag(data+loc+0, tag))
         return ttULONG(data+loc+8);
   }
   return 0;
}
