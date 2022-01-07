
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int player_count; TYPE_1__* players; } ;
struct TYPE_6__ {int buffer; } ;
typedef TYPE_1__ Player ;


 int del_buffer (int ) ;
 TYPE_1__* find_player (int) ;
 TYPE_4__* g ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void delete_player(int id) {
    Player *player = find_player(id);
    if (!player) {
        return;
    }
    int count = g->player_count;
    del_buffer(player->buffer);
    Player *other = g->players + (--count);
    memcpy(player, other, sizeof(Player));
    g->player_count = count;
}
