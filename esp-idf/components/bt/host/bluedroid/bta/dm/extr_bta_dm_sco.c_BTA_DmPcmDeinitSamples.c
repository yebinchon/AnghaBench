
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_free (int *) ;
 int * p_bta_dm_pcm_cb ;

void BTA_DmPcmDeinitSamples(void) {
    osi_free(p_bta_dm_pcm_cb);
    p_bta_dm_pcm_cb = ((void*)0);
}
