
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ utf32_t ;
typedef enum LineBreakClass { ____Placeholder_LineBreakClass } LineBreakClass ;
struct TYPE_2__ {scalar_t__ end; int lbp; } ;


 size_t LINEBREAK_INDEX_SIZE ;
 int assert (int) ;
 int get_char_lb_class (scalar_t__,int ) ;
 TYPE_1__* lb_prop_index ;

__attribute__((used)) static enum LineBreakClass get_char_lb_class_default(
  utf32_t ch)
{
 size_t i = 0;
 while (ch > lb_prop_index[i].end)
  ++i;
 assert(i < LINEBREAK_INDEX_SIZE);
 return get_char_lb_class(ch, lb_prop_index[i].lbp);
}
