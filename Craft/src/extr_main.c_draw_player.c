
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ Player ;
typedef int Attrib ;


 int draw_cube (int *,int ) ;

void draw_player(Attrib *attrib, Player *player) {
    draw_cube(attrib, player->buffer);
}
