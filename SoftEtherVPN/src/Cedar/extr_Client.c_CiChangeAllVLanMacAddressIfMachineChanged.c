
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int CLIENT ;


 int CiChangeAllVLanMacAddress (int *) ;
 int CiGetCurrentMachineHash (int *) ;
 int CiGetCurrentMachineHashNew (int *) ;
 int CiGetCurrentMachineHashOld (int *) ;
 int CiReadLastMachineHash (int *) ;
 int CiWriteLastMachineHash (int *) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int MsIsAdmin () ;
 int SHA1_SIZE ;

void CiChangeAllVLanMacAddressIfMachineChanged(CLIENT *c)
{
 UCHAR current_hash_new[SHA1_SIZE];
 UCHAR current_hash[SHA1_SIZE];
 UCHAR current_hash_old[SHA1_SIZE];
 UCHAR saved_hash[SHA1_SIZE];

 if (c == ((void*)0))
 {
  return;
 }
 CiGetCurrentMachineHashNew(current_hash_new);
 CiGetCurrentMachineHash(current_hash);
 CiGetCurrentMachineHashOld(current_hash_old);

 if (CiReadLastMachineHash(saved_hash) == 0)
 {
  CiWriteLastMachineHash(current_hash_new);
  return;
 }

 if (Cmp(saved_hash, current_hash_old, SHA1_SIZE) == 0)
 {
  CiWriteLastMachineHash(current_hash_new);
  return;
 }

 if (Cmp(saved_hash, current_hash, SHA1_SIZE) == 0)
 {
  CiWriteLastMachineHash(current_hash_new);
  return;
 }

 if (Cmp(saved_hash, current_hash_new, SHA1_SIZE) == 0)
 {
  return;
 }

 if (CiWriteLastMachineHash(current_hash_new) == 0)
 {
  return;
 }

 CiChangeAllVLanMacAddress(c);
}
