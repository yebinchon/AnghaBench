
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_ethhdr {int dummy; } ;


 int os_free (int *) ;

void wpa2_sm_free_eapol(u8 *buffer)
{
    if (buffer != ((void*)0)) {
        buffer = buffer - sizeof(struct l2_ethhdr);
        os_free(buffer);
    }

}
