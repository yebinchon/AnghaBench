
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;


 int RARCH_WARN (char*,char const*) ;
 int RARCH_WRAP_BORDER ;
 int RARCH_WRAP_DEFAULT ;
 int RARCH_WRAP_EDGE ;
 int RARCH_WRAP_MIRRORED_REPEAT ;
 int RARCH_WRAP_REPEAT ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static enum gfx_wrap_type wrap_str_to_mode(const char *wrap_mode)
{
   if (string_is_equal(wrap_mode, "clamp_to_border"))
      return RARCH_WRAP_BORDER;
   else if (string_is_equal(wrap_mode, "clamp_to_edge"))
      return RARCH_WRAP_EDGE;
   else if (string_is_equal(wrap_mode, "repeat"))
      return RARCH_WRAP_REPEAT;
   else if (string_is_equal(wrap_mode, "mirrored_repeat"))
      return RARCH_WRAP_MIRRORED_REPEAT;

   RARCH_WARN("Invalid wrapping type %s. Valid ones are: clamp_to_border"
         " (default), clamp_to_edge, repeat and mirrored_repeat. Falling back to default.\n",
         wrap_mode);
   return RARCH_WRAP_DEFAULT;
}
