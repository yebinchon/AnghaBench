
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct zlib_trans_stream {int ex; } ;


 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static bool zlib_inflate_define(void *data, const char *prop, uint32_t val)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;
   if (string_is_equal(prop, "window_bits"))
   {
      if (z)
         z->ex = (int) val;
      return 1;
   }
   return 0;
}
