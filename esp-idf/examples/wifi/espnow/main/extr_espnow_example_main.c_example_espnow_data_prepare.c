
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int len; int magic; int state; int dest_mac; scalar_t__ buffer; } ;
typedef TYPE_1__ example_espnow_send_param_t ;
struct TYPE_5__ {size_t type; scalar_t__ crc; int payload; int magic; scalar_t__ seq_num; int state; } ;
typedef TYPE_2__ example_espnow_data_t ;


 size_t EXAMPLE_ESPNOW_DATA_BROADCAST ;
 size_t EXAMPLE_ESPNOW_DATA_UNICAST ;
 scalar_t__ IS_BROADCAST_ADDR (int ) ;
 int UINT16_MAX ;
 int assert (int) ;
 scalar_t__ esp_crc16_le (int ,int const*,int) ;
 int esp_fill_random (int ,int) ;
 int * s_example_espnow_seq ;

void example_espnow_data_prepare(example_espnow_send_param_t *send_param)
{
    example_espnow_data_t *buf = (example_espnow_data_t *)send_param->buffer;

    assert(send_param->len >= sizeof(example_espnow_data_t));

    buf->type = IS_BROADCAST_ADDR(send_param->dest_mac) ? EXAMPLE_ESPNOW_DATA_BROADCAST : EXAMPLE_ESPNOW_DATA_UNICAST;
    buf->state = send_param->state;
    buf->seq_num = s_example_espnow_seq[buf->type]++;
    buf->crc = 0;
    buf->magic = send_param->magic;

    esp_fill_random(buf->payload, send_param->len - sizeof(example_espnow_data_t));
    buf->crc = esp_crc16_le(UINT16_MAX, (uint8_t const *)buf, send_param->len);
}
