
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int source; } ;
typedef TYPE_1__ sift_param_parser_t ;
typedef int ebb_buf ;



__attribute__((used)) static void uri_sift_on_source_blob(void* context, ebb_buf data)
{
 sift_param_parser_t* parser = (sift_param_parser_t*)context;
 parser->source = data;
}
