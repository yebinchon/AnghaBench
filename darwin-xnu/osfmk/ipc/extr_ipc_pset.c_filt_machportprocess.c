
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int uint64_t ;
typedef TYPE_2__* thread_t ;
struct kevent_internal_s {int* ext; int flags; scalar_t__ fflags; void* data; } ;
struct TYPE_5__ {int p_mqueue; } ;
struct knote {int kn_sfflags; scalar_t__* kn_ext; struct kevent_internal_s kn_kevent; TYPE_1__ kn_ptr; } ;
struct filt_process_s {int fp_data_out; scalar_t__ fp_data_resid; int fp_flags; } ;
typedef scalar_t__ mach_vm_address_t ;
typedef scalar_t__ mach_msg_size_t ;
typedef int mach_msg_option_t ;
typedef int ipc_object_t ;
typedef int ipc_mqueue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int ith_msize; int ith_option; scalar_t__ ith_state; scalar_t__ turnstile; scalar_t__ ith_kmsg; scalar_t__ ith_qos_override; scalar_t__ ith_qos; void* ith_receiver_name; struct knote* ith_knote; int * ith_continuation; scalar_t__ ith_rsize; scalar_t__ ith_msg_addr; int ith_object; } ;


 int EV_EOF ;
 scalar_t__ FALSE ;
 int FILTER_ACTIVE ;
 int FILTER_RESET_EVENT_QOS ;
 scalar_t__ IKM_NULL ;
 int KEVENT_FLAG_STACK_DATA ;
 scalar_t__ MACH_MSG_SUCCESS ;
 void* MACH_PORT_NULL ;
 scalar_t__ MACH_RCV_IN_PROGRESS ;
 int MACH_RCV_LARGE ;
 int MACH_RCV_LARGE_IDENTITY ;
 int MACH_RCV_MSG ;
 int MACH_RCV_STACK ;
 scalar_t__ MACH_RCV_TIMED_OUT ;
 int MACH_RCV_TIMEOUT ;
 scalar_t__ MACH_RCV_TOO_LARGE ;
 int MACH_RCV_TRAILER_MASK ;
 int MACH_RCV_VOUCHER ;
 int THREAD_INTERRUPTIBLE ;
 scalar_t__ THREAD_NOT_WAITING ;
 scalar_t__ THREAD_RESTART ;
 scalar_t__ TRUE ;
 scalar_t__ TURNSTILE_NULL ;
 int assert (int) ;
 TYPE_2__* current_thread () ;
 int imq_lock (int ) ;
 int io_reference (int ) ;
 int io_release (int ) ;
 scalar_t__ ipc_mqueue_receive_on_thread (int ,int,scalar_t__,int ,int ,TYPE_2__*) ;
 scalar_t__ mach_msg_receive_results (scalar_t__*) ;
 int mqueue_to_object (int ) ;

__attribute__((used)) static int
filt_machportprocess(
 struct knote *kn,
 struct filt_process_s *process_data,
 struct kevent_internal_s *kev)
{
 ipc_mqueue_t mqueue = kn->kn_ptr.p_mqueue;
 ipc_object_t object = mqueue_to_object(mqueue);
 thread_t self = current_thread();
 boolean_t used_filtprocess_data = FALSE;

 wait_result_t wresult;
 mach_msg_option_t option;
 mach_vm_address_t addr;
 mach_msg_size_t size;


 *kev = kn->kn_kevent;
 kev->ext[3] = 0;


 if (kev->flags & EV_EOF) {
  return FILTER_ACTIVE | FILTER_RESET_EVENT_QOS;
 }






 option = kn->kn_sfflags & (MACH_RCV_MSG|MACH_RCV_LARGE|MACH_RCV_LARGE_IDENTITY|
                            MACH_RCV_TRAILER_MASK|MACH_RCV_VOUCHER);

 if (option & MACH_RCV_MSG) {
  addr = (mach_vm_address_t) kn->kn_ext[0];
  size = (mach_msg_size_t) kn->kn_ext[1];





  if (size == 0 && process_data != ((void*)0)) {
   used_filtprocess_data = TRUE;

   addr = (mach_vm_address_t)process_data->fp_data_out;
   size = (mach_msg_size_t)process_data->fp_data_resid;
   option |= (MACH_RCV_LARGE | MACH_RCV_LARGE_IDENTITY);
   if (process_data->fp_flags & KEVENT_FLAG_STACK_DATA)
    option |= MACH_RCV_STACK;
  }
 } else {

  option = MACH_RCV_LARGE;
  addr = 0;
  size = 0;
 }

 imq_lock(mqueue);


 io_reference(object);
 self->ith_object = object;
 self->ith_msg_addr = addr;
 self->ith_rsize = size;
 self->ith_msize = 0;
 self->ith_option = option;
 self->ith_receiver_name = MACH_PORT_NULL;
 self->ith_continuation = ((void*)0);
 option |= MACH_RCV_TIMEOUT;
 self->ith_state = MACH_RCV_IN_PROGRESS;
 self->ith_knote = kn;

 wresult = ipc_mqueue_receive_on_thread(
   mqueue,
   option,
   size,
   0,
   THREAD_INTERRUPTIBLE,
   self);






 if (wresult == THREAD_RESTART || self->ith_state == MACH_RCV_TIMED_OUT) {
  assert(self->turnstile != TURNSTILE_NULL);
  io_release(object);
  return 0;
 }

 assert(wresult == THREAD_NOT_WAITING);
 assert(self->ith_state != MACH_RCV_IN_PROGRESS);






 if ((option & MACH_RCV_MSG) != MACH_RCV_MSG) {
  assert(self->ith_state == MACH_RCV_TOO_LARGE);
  assert(self->ith_kmsg == IKM_NULL);
  kev->data = self->ith_receiver_name;
  io_release(object);
  return FILTER_ACTIVE;
 }





 kev->fflags = mach_msg_receive_results(&size);
 if (kev->fflags == MACH_RCV_TOO_LARGE) {
  kev->ext[1] = self->ith_msize;
  if (option & MACH_RCV_LARGE_IDENTITY)
   kev->data = self->ith_receiver_name;
  else
   kev->data = MACH_PORT_NULL;
 } else {
  kev->ext[1] = size;
  kev->data = MACH_PORT_NULL;
 }






 if (used_filtprocess_data) {
  assert(process_data->fp_data_resid >= size);
  process_data->fp_data_resid -= size;
  if ((process_data->fp_flags & KEVENT_FLAG_STACK_DATA) == 0) {
   kev->ext[0] = process_data->fp_data_out;
   process_data->fp_data_out += size;
  } else {
   assert(option & MACH_RCV_STACK);
   kev->ext[0] = process_data->fp_data_out +
          process_data->fp_data_resid;
  }
 }
 if (kev->fflags == MACH_MSG_SUCCESS) {
  kev->ext[2] = ((uint64_t)self->ith_qos << 32) |
    (uint64_t)self->ith_qos_override;
 }

 return FILTER_ACTIVE;
}
