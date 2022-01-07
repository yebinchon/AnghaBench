
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ VC2EncContext ;


 int put_bits (int *,int,int ) ;

__attribute__((used)) static void encode_clean_area(VC2EncContext *s)
{
    put_bits(&s->pb, 1, 0);
}
