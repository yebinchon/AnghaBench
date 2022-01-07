
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* user_tcflag_t ;
typedef void* user_speed_t ;
struct user_termios {void* c_ospeed; void* c_ispeed; int c_cc; void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;
struct termios32 {scalar_t__ c_ospeed; scalar_t__ c_ispeed; int c_cc; scalar_t__ c_lflag; scalar_t__ c_cflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;


 int bcopy (int ,int ,int) ;

__attribute__((used)) static void
termios32to64(struct termios32 *in, struct user_termios *out)
{
 out->c_iflag = (user_tcflag_t)in->c_iflag;
 out->c_oflag = (user_tcflag_t)in->c_oflag;
 out->c_cflag = (user_tcflag_t)in->c_cflag;
 out->c_lflag = (user_tcflag_t)in->c_lflag;


 bcopy(in->c_cc, out->c_cc, sizeof(in->c_cc));

 out->c_ispeed = (user_speed_t)in->c_ispeed;
 out->c_ospeed = (user_speed_t)in->c_ospeed;
}
