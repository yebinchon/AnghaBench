
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; int cascade; } ;
typedef TYPE_2__ scd_param_parser_t ;
struct TYPE_3__ {int face; } ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void uri_scd_on_model_string(void* context, char* string)
{
 scd_param_parser_t* parser = (scd_param_parser_t*)context;
 if (strcmp(string, "face") == 0)
  parser->cascade = parser->context->face;
}
