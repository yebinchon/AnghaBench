
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_procinfo {scalar_t__ spi_pid; scalar_t__ spi_delegated; scalar_t__ spi_epid; int spi_euuid; int spi_uuid; } ;
struct pktap_header {scalar_t__ pth_pid; scalar_t__* pth_comm; scalar_t__ pth_epid; scalar_t__* pth_ecomm; int pth_euuid; int pth_flags; int pth_uuid; } ;


 int MAXCOMLEN ;
 int PTH_FLAG_PROC_DELEGATED ;
 int proc_name (scalar_t__,scalar_t__*,int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
pktap_set_procinfo(struct pktap_header *hdr, struct so_procinfo *soprocinfo)
{
 hdr->pth_pid = soprocinfo->spi_pid;
 if (hdr->pth_comm[0] == 0)
  proc_name(soprocinfo->spi_pid, hdr->pth_comm, MAXCOMLEN);
 if (soprocinfo->spi_pid != 0)
  uuid_copy(hdr->pth_uuid, soprocinfo->spi_uuid);

 if (soprocinfo->spi_delegated != 0) {
  hdr->pth_flags |= PTH_FLAG_PROC_DELEGATED;
  hdr->pth_epid = soprocinfo->spi_epid;
  if (hdr->pth_ecomm[0] == 0)
  proc_name(soprocinfo->spi_epid, hdr->pth_ecomm, MAXCOMLEN);
  uuid_copy(hdr->pth_euuid, soprocinfo->spi_euuid);
 }
}
