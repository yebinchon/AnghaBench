
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum DiracParseCodes { ____Placeholder_DiracParseCodes } DiracParseCodes ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct TYPE_8__ {int next_parse_offset; int last_parse_code; TYPE_2__ pb; } ;
typedef TYPE_1__ VC2EncContext ;


 int AV_WB32 (scalar_t__,int) ;
 int DIRAC_PCODE_END_SEQ ;
 int avpriv_align_put_bits (TYPE_2__*) ;
 int avpriv_put_string (TYPE_2__*,char*,int ) ;
 int put_bits (TYPE_2__*,int,int) ;
 int put_bits32 (TYPE_2__*,int) ;
 int put_bits_count (TYPE_2__*) ;

__attribute__((used)) static void encode_parse_info(VC2EncContext *s, enum DiracParseCodes pcode)
{
    uint32_t cur_pos, dist;

    avpriv_align_put_bits(&s->pb);

    cur_pos = put_bits_count(&s->pb) >> 3;


    avpriv_put_string(&s->pb, "BBCD", 0);


    put_bits(&s->pb, 8, pcode);


    dist = cur_pos - s->next_parse_offset;
    AV_WB32(s->pb.buf + s->next_parse_offset + 5, dist);
    s->next_parse_offset = cur_pos;
    put_bits32(&s->pb, pcode == DIRAC_PCODE_END_SEQ ? 13 : 0);


    put_bits32(&s->pb, s->last_parse_code == DIRAC_PCODE_END_SEQ ? 13 : dist);

    s->last_parse_code = pcode;
}
