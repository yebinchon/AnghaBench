
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int name; } ;


 int EX_USAGE ;
 int errx (int ,char*,int ,char*) ;
 TYPE_1__* g_longopts ;
 char* optarg ;
 size_t option_index ;
 int strtoull (char*,char**,int) ;

__attribute__((used)) static uint32_t
read_dec_arg()
{
 char *cp;


 uint32_t arg_val = (uint32_t)strtoull(optarg, &cp, 10);

 if (cp == optarg || *cp)
  errx(EX_USAGE, "arg --%s requires a decimal number, found \"%s\"",
       g_longopts[option_index].name, optarg);

 return arg_val;
}
