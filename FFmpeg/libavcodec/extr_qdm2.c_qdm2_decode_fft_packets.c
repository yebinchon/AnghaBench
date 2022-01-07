
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fft_coefs_index; int* fft_coefs_min_index; int sub_packets_B; int sub_sampling; int* fft_coefs_max_index; int * fft_level_exp; TYPE_1__* sub_packet_list_B; } ;
struct TYPE_7__ {int type; int size; int data; } ;
struct TYPE_6__ {TYPE_2__* packet; } ;
typedef TYPE_2__ QDM2SubPacket ;
typedef TYPE_3__ QDM2Context ;
typedef int GetBitContext ;


 scalar_t__* fft_subpackets ;
 int get_bits (int *,int) ;
 int init_get_bits (int *,int ,int) ;
 int qdm2_fft_decode_tones (TYPE_3__*,int,int *,int) ;

__attribute__((used)) static void qdm2_decode_fft_packets(QDM2Context *q)
{
    int i, j, min, max, value, type, unknown_flag;
    GetBitContext gb;

    if (!q->sub_packet_list_B[0].packet)
        return;


    q->fft_coefs_index = 0;
    for (i = 0; i < 5; i++)
        q->fft_coefs_min_index[i] = -1;


    for (i = 0, max = 256; i < q->sub_packets_B; i++) {
        QDM2SubPacket *packet = ((void*)0);


        for (j = 0, min = 0; j < q->sub_packets_B; j++) {
            value = q->sub_packet_list_B[j].packet->type;
            if (value > min && value < max) {
                min = value;
                packet = q->sub_packet_list_B[j].packet;
            }
        }

        max = min;


        if (!packet)
            return;

        if (i == 0 &&
            (packet->type < 16 || packet->type >= 48 ||
             fft_subpackets[packet->type - 16]))
            return;


        init_get_bits(&gb, packet->data, packet->size * 8);

        if (packet->type >= 32 && packet->type < 48 && !fft_subpackets[packet->type - 16])
            unknown_flag = 1;
        else
            unknown_flag = 0;

        type = packet->type;

        if ((type >= 17 && type < 24) || (type >= 33 && type < 40)) {
            int duration = q->sub_sampling + 5 - (type & 15);

            if (duration >= 0 && duration < 4)
                qdm2_fft_decode_tones(q, duration, &gb, unknown_flag);
        } else if (type == 31) {
            for (j = 0; j < 4; j++)
                qdm2_fft_decode_tones(q, j, &gb, unknown_flag);
        } else if (type == 46) {
            for (j = 0; j < 6; j++)
                q->fft_level_exp[j] = get_bits(&gb, 6);
            for (j = 0; j < 4; j++)
                qdm2_fft_decode_tones(q, j, &gb, unknown_flag);
        }
    }


    for (i = 0, j = -1; i < 5; i++)
        if (q->fft_coefs_min_index[i] >= 0) {
            if (j >= 0)
                q->fft_coefs_max_index[j] = q->fft_coefs_min_index[i];
            j = i;
        }
    if (j >= 0)
        q->fft_coefs_max_index[j] = q->fft_coefs_index;
}
