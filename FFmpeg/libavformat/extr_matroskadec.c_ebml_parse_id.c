
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ id; } ;
typedef TYPE_1__ EbmlSyntax ;



__attribute__((used)) static EbmlSyntax *ebml_parse_id(EbmlSyntax *syntax, uint32_t id)
{
    int i;



    for (i = 0; syntax[i].id; i++)
        if (id == syntax[i].id)
            break;

    return &syntax[i];
}
