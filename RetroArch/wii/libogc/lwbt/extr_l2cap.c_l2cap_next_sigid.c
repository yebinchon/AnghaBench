
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;


 int sigid_nxt ;

u8_t l2cap_next_sigid(void)
{
 ++sigid_nxt;
 if(sigid_nxt == 0) {
  sigid_nxt = 1;
 }
 return sigid_nxt;
}
