
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int gb; } ;
struct TYPE_6__ {int id; int len; int data; } ;
typedef TYPE_1__ LBRChunk ;
typedef TYPE_2__ DCALbrDecoder ;


 scalar_t__ init_get_bits8 (int *,int ,int ) ;
 int parse_tonal (TYPE_2__*,int ) ;

__attribute__((used)) static int parse_tonal_group(DCALbrDecoder *s, LBRChunk *chunk)
{
    if (!chunk->len)
        return 0;

    if (init_get_bits8(&s->gb, chunk->data, chunk->len) < 0)
        return -1;

    return parse_tonal(s, chunk->id);
}
