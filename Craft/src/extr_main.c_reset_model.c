
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double day_length; int time_changed; scalar_t__ message_index; int messages; scalar_t__ typing; int typing_buffer; scalar_t__ item_index; scalar_t__ flying; scalar_t__ observe2; scalar_t__ observe1; scalar_t__ player_count; int players; scalar_t__ chunk_count; int chunks; } ;
typedef int Player ;
typedef int Chunk ;


 double DAY_LENGTH ;
 int MAX_CHUNKS ;
 int MAX_MESSAGES ;
 int MAX_PLAYERS ;
 int MAX_TEXT_LENGTH ;
 TYPE_1__* g ;
 int glfwSetTime (double) ;
 int memset (int ,int ,int) ;

void reset_model() {
    memset(g->chunks, 0, sizeof(Chunk) * MAX_CHUNKS);
    g->chunk_count = 0;
    memset(g->players, 0, sizeof(Player) * MAX_PLAYERS);
    g->player_count = 0;
    g->observe1 = 0;
    g->observe2 = 0;
    g->flying = 0;
    g->item_index = 0;
    memset(g->typing_buffer, 0, sizeof(char) * MAX_TEXT_LENGTH);
    g->typing = 0;
    memset(g->messages, 0, sizeof(char) * MAX_MESSAGES * MAX_TEXT_LENGTH);
    g->message_index = 0;
    g->day_length = DAY_LENGTH;
    glfwSetTime(g->day_length / 3.0);
    g->time_changed = 1;
}
