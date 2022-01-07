
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_4__ {int* key; } ;
struct TYPE_5__ {int* nb; } ;
struct TYPE_6__ {size_t key_size; int ediv; TYPE_1__ ltk; TYPE_2__ rand_nb; } ;


 size_t RAND_NB_LEN ;
 size_t SEC_KEY_LEN ;
 TYPE_3__ app_sec_env ;
 int random () ;

void app_ble_sec_gen_ltk(UINT8 key_size)
{

    UINT8 i;
    app_sec_env.key_size = key_size;


    for (i = 0; i < RAND_NB_LEN; i++) {
        app_sec_env.rand_nb.nb[i] = random() % 256;
    }


    for (i = 0; i < SEC_KEY_LEN; i++) {
        app_sec_env.ltk.key[i] = (((key_size) < (16 - i)) ? 0 : random() % 256);
    }


    app_sec_env.ediv = random() % 65536;
}
