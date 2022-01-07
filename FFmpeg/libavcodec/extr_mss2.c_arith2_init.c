
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * gB; } ;
struct TYPE_5__ {int high; int get_number; int get_model_sym; TYPE_1__ gbc; scalar_t__ overread; int value; scalar_t__ low; } ;
typedef int GetByteContext ;
typedef TYPE_2__ ArithCoder ;


 int arith2_get_model_sym ;
 int arith2_get_number ;
 int bytestream2_get_be24 (int *) ;

__attribute__((used)) static void arith2_init(ArithCoder *c, GetByteContext *gB)
{
    c->low = 0;
    c->high = 0xFFFFFF;
    c->value = bytestream2_get_be24(gB);
    c->overread = 0;
    c->gbc.gB = gB;
    c->get_model_sym = arith2_get_model_sym;
    c->get_number = arith2_get_number;
}
