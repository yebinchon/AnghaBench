
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 int bta_ag_port_cback (int ,int ,int) ;

void bta_ag_port_cback_1(UINT32 code, UINT16 handle) {bta_ag_port_cback(code, handle, 1);}
