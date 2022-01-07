
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct display {scalar_t__* value; } ;
typedef size_t png_byte ;
struct TYPE_4__ {size_t value_count; TYPE_1__* values; } ;
struct TYPE_3__ {scalar_t__ name; scalar_t__ value; } ;


 scalar_t__ all ;
 TYPE_2__* options ;
 scalar_t__ range_hi ;
 scalar_t__ range_lo ;

__attribute__((used)) static int
opt_list_end(struct display *dp, png_byte opt, png_byte entry)
{
   if (options[opt].values[entry].name == range_lo)
      return entry+1U >= options[opt].value_count ||
         options[opt].values[entry+1U].name != range_hi ||
         options[opt].values[entry+1U].value <= dp->value[opt] ;

   else
      return entry+1U >= options[opt].value_count ||
         options[opt].values[entry+1U].name == all ;
}
