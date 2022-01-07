
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sival_int; } ;
struct TYPE_8__ {TYPE_1__ size_equivalent; } ;
struct TYPE_11__ {int sigev_notify_attributes; int sigev_notify_function; TYPE_2__ sigev_value; int sigev_signo; int sigev_notify; } ;
struct user_aiocb {TYPE_5__ aio_sigevent; int aio_lio_opcode; int aio_reqprio; int aio_nbytes; int aio_buf; int aio_offset; int aio_fildes; } ;
struct TYPE_9__ {int sival_int; } ;
struct TYPE_10__ {TYPE_3__ size_equivalent; } ;
struct TYPE_12__ {int sigev_notify_attributes; int sigev_notify_function; TYPE_4__ sigev_value; int sigev_signo; int sigev_notify; } ;
struct user64_aiocb {TYPE_6__ aio_sigevent; int aio_lio_opcode; int aio_reqprio; int aio_nbytes; int aio_buf; int aio_offset; int aio_fildes; } ;



__attribute__((used)) static void
do_munge_aiocb_user64_to_user( struct user64_aiocb *my_aiocbp, struct user_aiocb *the_user_aiocbp )
{
 the_user_aiocbp->aio_fildes = my_aiocbp->aio_fildes;
 the_user_aiocbp->aio_offset = my_aiocbp->aio_offset;
 the_user_aiocbp->aio_buf = my_aiocbp->aio_buf;
 the_user_aiocbp->aio_nbytes = my_aiocbp->aio_nbytes;
 the_user_aiocbp->aio_reqprio = my_aiocbp->aio_reqprio;
 the_user_aiocbp->aio_lio_opcode = my_aiocbp->aio_lio_opcode;

 the_user_aiocbp->aio_sigevent.sigev_notify = my_aiocbp->aio_sigevent.sigev_notify;
 the_user_aiocbp->aio_sigevent.sigev_signo = my_aiocbp->aio_sigevent.sigev_signo;
 the_user_aiocbp->aio_sigevent.sigev_value.size_equivalent.sival_int =
  my_aiocbp->aio_sigevent.sigev_value.size_equivalent.sival_int;
 the_user_aiocbp->aio_sigevent.sigev_notify_function =
  my_aiocbp->aio_sigevent.sigev_notify_function;
 the_user_aiocbp->aio_sigevent.sigev_notify_attributes =
  my_aiocbp->aio_sigevent.sigev_notify_attributes;
}
