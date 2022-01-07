
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ pairwise_cipher; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_CIPHER_NONE ;
 int wpa_printf (int ,char*) ;

int wpa_supplicant_gtk_tx_bit_workaround(const struct wpa_sm *sm,
                        int tx)
{
    if (tx && sm->pairwise_cipher != WPA_CIPHER_NONE) {
        return 0;
    }
    return tx;
}
