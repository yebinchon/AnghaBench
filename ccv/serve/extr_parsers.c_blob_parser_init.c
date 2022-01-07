
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; scalar_t__ written; scalar_t__ len; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ blob_parser_t ;



void blob_parser_init(blob_parser_t* parser)
{
 parser->data.len = 0;
 parser->data.written = 0;
 parser->data.data = 0;
}
