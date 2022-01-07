
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_WPA2_START ;
 int wpa2_post (int ,int ) ;
 int wpa2_start_eapol_internal () ;

__attribute__((used)) static int wpa2_start_eapol(void)
{



    return wpa2_start_eapol_internal();

}
