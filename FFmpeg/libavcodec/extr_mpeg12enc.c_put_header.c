
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int avpriv_align_put_bits (int *) ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,int,int) ;

__attribute__((used)) static void put_header(MpegEncContext *s, int header)
{
    avpriv_align_put_bits(&s->pb);
    put_bits(&s->pb, 16, header >> 16);
    put_sbits(&s->pb, 16, header);
}
