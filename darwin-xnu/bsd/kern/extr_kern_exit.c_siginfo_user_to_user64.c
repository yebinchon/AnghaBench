
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sival_ptr; } ;
struct TYPE_9__ {int si_band; TYPE_2__ si_value; int si_addr; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_3__ user_siginfo_t ;
struct TYPE_7__ {int sival_ptr; } ;
struct TYPE_10__ {int si_band; TYPE_1__ si_value; int si_addr; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_4__ user64_siginfo_t ;



void
siginfo_user_to_user64(user_siginfo_t *in, user64_siginfo_t *out)
{
 out->si_signo = in->si_signo;
 out->si_errno = in->si_errno;
 out->si_code = in->si_code;
 out->si_pid = in->si_pid;
 out->si_uid = in->si_uid;
 out->si_status = in->si_status;
 out->si_addr = in->si_addr;

 out->si_value.sival_ptr = in->si_value.sival_ptr;
 out->si_band = in->si_band;
}
