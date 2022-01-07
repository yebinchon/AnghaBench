
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf32_t ;
struct LineBreakProperties {int dummy; } ;
typedef enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;


 int LBP_XX ;
 int get_char_lb_class (int ,struct LineBreakProperties*) ;
 int get_char_lb_class_default (int ) ;

__attribute__((used)) static enum LineBreakClass get_char_lb_class_lang(
  utf32_t ch,
  struct LineBreakProperties *lbpLang)
{
 enum LineBreakClass lbcResult;


 if (lbpLang)
 {
  lbcResult = get_char_lb_class(ch, lbpLang);
  if (lbcResult != LBP_XX)
   return lbcResult;
 }




 return get_char_lb_class_default(ch);
}
