
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Size ;
typedef int MaintenanceDaemonDBData ;
typedef int MaintenanceDaemonControlData ;


 size_t add_size (size_t,size_t) ;
 size_t hash_estimate_size (int ,int) ;
 int max_worker_processes ;

__attribute__((used)) static size_t
MaintenanceDaemonShmemSize(void)
{
 Size size = 0;
 Size hashSize = 0;

 size = add_size(size, sizeof(MaintenanceDaemonControlData));






 hashSize = hash_estimate_size(max_worker_processes, sizeof(MaintenanceDaemonDBData));
 size = add_size(size, hashSize);

 return size;
}
