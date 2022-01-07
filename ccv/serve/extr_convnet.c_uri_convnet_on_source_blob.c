
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ebb_buf ;
struct TYPE_2__ {int source; } ;
typedef TYPE_1__ convnet_param_parser_t ;



__attribute__((used)) static void uri_convnet_on_source_blob(void* context, ebb_buf data)
{
 convnet_param_parser_t* parser = (convnet_param_parser_t*)context;
 parser->source = data;
}
