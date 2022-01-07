
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_socket; } ;


 int WNT_ACQUIRE ;
 int WNT_RELEASE ;
 scalar_t__ WNT_STOPUSING ;
 scalar_t__ in_pcb_checkstate (struct inpcb*,int ,int) ;
 int socket_lock (int ,int) ;
 int socket_unlock (int ,int) ;

__attribute__((used)) static bool
cfil_socket_safe_lock(struct inpcb *inp)
{
    if (in_pcb_checkstate(inp, WNT_ACQUIRE, 0) != WNT_STOPUSING) {
        socket_lock(inp->inp_socket, 1);
        if (in_pcb_checkstate(inp, WNT_RELEASE, 1) != WNT_STOPUSING) {
            return 1;
        }
        socket_unlock(inp->inp_socket, 1);
    }
    return 0;
}
