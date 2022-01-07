
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wpa_sm_deinit () ;

bool wpa_deattach(void)
{
    wpa_sm_deinit();
    return 1;
}
