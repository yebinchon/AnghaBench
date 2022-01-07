
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tcflag_t ;
struct user_termios {scalar_t__ c_ospeed; scalar_t__ c_ispeed; int c_cc; scalar_t__ c_lflag; scalar_t__ c_cflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct termios32 {void* c_ospeed; void* c_ispeed; int c_cc; void* c_lflag; void* c_cflag; void* c_oflag; void* c_iflag; } ;
typedef void* speed_t ;


 int bcopy (int ,int ,int) ;

__attribute__((used)) static void
termios64to32(struct user_termios *in, struct termios32 *out)
{
 out->c_iflag = (tcflag_t)in->c_iflag;
 out->c_oflag = (tcflag_t)in->c_oflag;
 out->c_cflag = (tcflag_t)in->c_cflag;
 out->c_lflag = (tcflag_t)in->c_lflag;


 bcopy(in->c_cc, out->c_cc, sizeof(in->c_cc));

 out->c_ispeed = (speed_t)in->c_ispeed;
 out->c_ospeed = (speed_t)in->c_ospeed;
}
