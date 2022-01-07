
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int BBA_IMR ;
 int BBA_IR ;
 int BBA_IR_BUSEI ;
 int BBA_IR_FIFOEI ;
 int BBA_IR_FRAGI ;
 int BBA_IR_RBFI ;
 int BBA_IR_REI ;
 int BBA_IR_RI ;
 int BBA_IR_TEI ;
 int BBA_IR_TI ;
 int bba_in8 (int ) ;
 int bba_netif ;
 int bba_out8 (int ,int) ;
 int bba_start_rx (int ,int) ;

__attribute__((used)) static inline void bba_interrupt(u16 *pstatus)
{
 u8 ir,imr,status;

 ir = bba_in8(BBA_IR);
 imr = bba_in8(BBA_IMR);
 status = ir&imr;

 if(status&BBA_IR_FRAGI) {
  bba_out8(BBA_IR,BBA_IR_FRAGI);
 }
 if(status&BBA_IR_RI) {
  bba_start_rx(bba_netif,0x10);
  bba_out8(BBA_IR,BBA_IR_RI);
 }
 if(status&BBA_IR_REI) {
  bba_out8(BBA_IR,BBA_IR_REI);
 }
 if(status&BBA_IR_TI) {
  bba_out8(BBA_IR,BBA_IR_TI);
 }
 if(status&BBA_IR_TEI) {
  bba_out8(BBA_IR,BBA_IR_TEI);
 }
 if(status&BBA_IR_FIFOEI) {
  bba_out8(BBA_IR,BBA_IR_FIFOEI);
 }
 if(status&BBA_IR_BUSEI) {
  bba_out8(BBA_IR,BBA_IR_BUSEI);
 }
 if(status&BBA_IR_RBFI) {
  bba_start_rx(bba_netif,0x10);
  bba_out8(BBA_IR,BBA_IR_RBFI);
 }
 *pstatus |= status;
}
