
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int tError (char*) ;

void taosInitMsgHdr(void **hdr, void *dest, int maxPkts) {
  tError("function taosInitMsgHdr is not implemented in darwin system, exit!");
  exit(0);
}
