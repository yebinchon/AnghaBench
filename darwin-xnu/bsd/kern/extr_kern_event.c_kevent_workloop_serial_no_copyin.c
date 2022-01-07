
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int serial_no32 ;
typedef int serial_no ;
typedef TYPE_1__* proc_t ;
typedef int caddr_t ;
struct TYPE_4__ {scalar_t__ p_dispatchqueue_serialno_offset; } ;


 int copyin (scalar_t__,int ,int) ;
 scalar_t__ proc_is64bit (TYPE_1__*) ;

__attribute__((used)) static uint64_t
kevent_workloop_serial_no_copyin(proc_t p, uint64_t workloop_id)
{
 uint64_t serial_no = 0;
 user_addr_t addr;
 int rc;

 if (workloop_id == 0 || p->p_dispatchqueue_serialno_offset == 0) {
  return 0;
 }
 addr = (user_addr_t)(workloop_id + p->p_dispatchqueue_serialno_offset);

 if (proc_is64bit(p)) {
  rc = copyin(addr, (caddr_t)&serial_no, sizeof(serial_no));
 } else {
  uint32_t serial_no32 = 0;
  rc = copyin(addr, (caddr_t)&serial_no32, sizeof(serial_no32));
  serial_no = serial_no32;
 }
 return rc == 0 ? serial_no : 0;
}
