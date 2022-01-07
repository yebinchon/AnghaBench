
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ Conn ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int STATE_CLOSE ;
 scalar_t__ errno ;
 int twarn (char*,char const*) ;

__attribute__((used)) static void
check_err(Conn *c, const char *s)
{
    if (errno == EAGAIN)
        return;
    if (errno == EINTR)
        return;
    if (errno == EWOULDBLOCK)
        return;

    twarn("%s", s);
    c->state = STATE_CLOSE;
}
