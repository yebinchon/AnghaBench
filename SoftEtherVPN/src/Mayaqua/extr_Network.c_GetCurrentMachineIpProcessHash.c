
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Copy (void*,int ,int ) ;
 int GetCurrentMachineIpProcessHashInternal (int ) ;
 scalar_t__ IsZero (int ,int ) ;
 int Lock (int ) ;
 int SHA1_SIZE ;
 int Unlock (int ) ;
 int machine_ip_process_hash ;
 int machine_ip_process_hash_lock ;

void GetCurrentMachineIpProcessHash(void *hash)
{

 if (hash == ((void*)0))
 {
  return;
 }

 Lock(machine_ip_process_hash_lock);
 {
  if (IsZero(machine_ip_process_hash, SHA1_SIZE))
  {
   GetCurrentMachineIpProcessHashInternal(machine_ip_process_hash);
  }

  Copy(hash, machine_ip_process_hash, SHA1_SIZE);
 }
 Unlock(machine_ip_process_hash_lock);
}
