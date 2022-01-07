
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTA_AgCiData () ;

void esp_hf_outgoing_data_ready(void)
{
    BTA_AgCiData();
}
