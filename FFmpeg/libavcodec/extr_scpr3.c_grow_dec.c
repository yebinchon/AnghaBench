
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * cnts; } ;
typedef TYPE_1__ PixelModel3 ;



__attribute__((used)) static void grow_dec(PixelModel3 *m)
{
    int a;

    a = 2 * m->length;
    m->cnts[2 * m->length] = m->cnts[m->length];
    m->length = a;
}
