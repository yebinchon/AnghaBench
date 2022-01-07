
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int * b1; int * b0; } ;
typedef int IDWTELEM ;
typedef TYPE_1__ DWTCompose ;


 int avpriv_mirror (int,int) ;

__attribute__((used)) static void spatial_compose53i_init(DWTCompose *cs, IDWTELEM *buffer,
                                    int height, int stride)
{
    cs->b0 = buffer + avpriv_mirror(-1 - 1, height - 1) * stride;
    cs->b1 = buffer + avpriv_mirror(-1, height - 1) * stride;
    cs->y = -1;
}
