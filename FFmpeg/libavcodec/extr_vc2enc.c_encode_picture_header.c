
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int picture_number; int pb; } ;
typedef TYPE_1__ VC2EncContext ;


 int avpriv_align_put_bits (int *) ;
 int put_bits32 (int *,int ) ;

__attribute__((used)) static void encode_picture_header(VC2EncContext *s)
{
    avpriv_align_put_bits(&s->pb);
    put_bits32(&s->pb, s->picture_number++);
}
