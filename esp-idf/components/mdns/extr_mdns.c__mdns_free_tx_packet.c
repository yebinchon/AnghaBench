
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int additional; int servers; int answers; int questions; } ;
typedef TYPE_1__ mdns_tx_packet_t ;


 int free (TYPE_1__*) ;
 int mdns_out_answer_t ;
 int mdns_out_question_t ;
 int queueFree (int ,int ) ;

__attribute__((used)) static void _mdns_free_tx_packet(mdns_tx_packet_t * packet)
{
    if (!packet) {
        return;
    }
    queueFree(mdns_out_question_t, packet->questions);
    queueFree(mdns_out_answer_t, packet->answers);
    queueFree(mdns_out_answer_t, packet->servers);
    queueFree(mdns_out_answer_t, packet->additional);
    free(packet);
}
