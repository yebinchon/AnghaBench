
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; int mixture_model; } ;
typedef TYPE_2__ dpm_param_parser_t ;
struct TYPE_3__ {int car; int pedestrian; } ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void uri_dpm_on_model_string(void* context, char* string)
{
 dpm_param_parser_t* parser = (dpm_param_parser_t*)context;
 if (strcmp(string, "pedestrian") == 0)
  parser->mixture_model = parser->context->pedestrian;
 else if (strcmp(string, "car") == 0)
  parser->mixture_model = parser->context->car;
}
