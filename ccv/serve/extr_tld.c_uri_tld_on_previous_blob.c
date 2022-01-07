
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int previous; } ;
typedef TYPE_1__ tld_param_parser_t ;
typedef int ebb_buf ;



__attribute__((used)) static void uri_tld_on_previous_blob(void* context, ebb_buf data)
{
 tld_param_parser_t* parser = (tld_param_parser_t*)context;
 parser->previous = data;
}
