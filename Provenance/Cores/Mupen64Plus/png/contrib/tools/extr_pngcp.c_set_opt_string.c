
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct display {TYPE_2__* stack; } ;
struct TYPE_6__ {TYPE_1__* values; } ;
struct TYPE_5__ {size_t opt; size_t entry; int opt_string_end; } ;
struct TYPE_4__ {int name; } ;


 TYPE_3__* options ;
 int set_opt_string_ (struct display*,unsigned int,size_t,int ) ;

__attribute__((used)) static void
set_opt_string(struct display *dp, unsigned int sp)

{
   dp->stack[sp].opt_string_end = set_opt_string_(dp, sp, dp->stack[sp].opt,
      options[dp->stack[sp].opt].values[dp->stack[sp].entry].name);
}
