
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int * lastRespData; } ;


 int wpabuf_free (int *) ;

void eap_sm_abort(struct eap_sm *sm)
{
 wpabuf_free(sm->lastRespData);
 sm->lastRespData = ((void*)0);
}
