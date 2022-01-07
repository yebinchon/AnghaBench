
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ last_pid; int so_flags; scalar_t__ e_pid; int e_uuid; int last_uuid; } ;
struct so_procinfo {scalar_t__ spi_pid; int spi_delegated; scalar_t__ spi_epid; int spi_euuid; int spi_uuid; } ;
struct inpcb {struct socket* inp_socket; } ;


 int SOF_DELEGATED ;
 int uuid_copy (int ,int ) ;

void
inp_get_soprocinfo(struct inpcb *inp, struct so_procinfo *soprocinfo)
{
 struct socket *so = inp->inp_socket;

 soprocinfo->spi_pid = so->last_pid;
 if (so->last_pid != 0)
  uuid_copy(soprocinfo->spi_uuid, so->last_uuid);



 if (so->so_flags & SOF_DELEGATED) {
  soprocinfo->spi_delegated = 1;
  soprocinfo->spi_epid = so->e_pid;
  uuid_copy(soprocinfo->spi_euuid, so->e_uuid);
 } else {
  soprocinfo->spi_delegated = 0;
  soprocinfo->spi_epid = so->last_pid;
 }
}
