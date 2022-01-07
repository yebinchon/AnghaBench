
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct so_procinfo {int spi_pid; scalar_t__ spi_delegated; int spi_epid; int spi_euuid; int spi_uuid; } ;
struct pktap_v2_hdr {int pth_pid; scalar_t__ pth_comm_offset; scalar_t__ pth_uuid_offset; int pth_flags; int pth_e_pid; scalar_t__ pth_e_comm_offset; scalar_t__ pth_e_uuid_offset; } ;


 int PKTAP_MAX_COMM_SIZE ;
 int PTH_FLAG_PROC_DELEGATED ;
 int proc_name (int,char*,int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
pktap_v2_set_procinfo(struct pktap_v2_hdr *pktap_v2_hdr,
    struct so_procinfo *soprocinfo)
{
 pktap_v2_hdr->pth_pid = soprocinfo->spi_pid;

 if (soprocinfo->spi_pid != 0 && soprocinfo->spi_pid != -1) {
  if (pktap_v2_hdr->pth_comm_offset != 0) {
   char *ptr = ((char *)pktap_v2_hdr) +
       pktap_v2_hdr->pth_comm_offset;

   proc_name(soprocinfo->spi_pid,
       ptr, PKTAP_MAX_COMM_SIZE);
  }
  if (pktap_v2_hdr->pth_uuid_offset != 0) {
   uuid_t *ptr = (uuid_t *) (((char *)pktap_v2_hdr) +
       pktap_v2_hdr->pth_uuid_offset);

   uuid_copy(*ptr, soprocinfo->spi_uuid);
  }
 }

 if (!(pktap_v2_hdr->pth_flags & PTH_FLAG_PROC_DELEGATED))
  return;




 if (soprocinfo->spi_delegated != 0) {
  pktap_v2_hdr->pth_flags |= PTH_FLAG_PROC_DELEGATED;
  pktap_v2_hdr->pth_e_pid = soprocinfo->spi_epid;

  if (soprocinfo->spi_pid != 0 && soprocinfo->spi_pid != -1 &&
      pktap_v2_hdr->pth_e_comm_offset != 0) {
   char *ptr = ((char *)pktap_v2_hdr) +
       pktap_v2_hdr->pth_e_comm_offset;

   proc_name(soprocinfo->spi_epid,
       ptr, PKTAP_MAX_COMM_SIZE);
  }
  if (pktap_v2_hdr->pth_e_uuid_offset != 0) {
   uuid_t *ptr = (uuid_t *) (((char *)pktap_v2_hdr) +
       pktap_v2_hdr->pth_e_uuid_offset);

   uuid_copy(*ptr, soprocinfo->spi_euuid);
  }
 }
}
