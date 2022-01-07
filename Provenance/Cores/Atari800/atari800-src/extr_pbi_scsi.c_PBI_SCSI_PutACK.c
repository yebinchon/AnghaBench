
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int PBI_SCSI_ACK ;
 int PBI_SCSI_REQ ;
 scalar_t__ SCSI_PHASE_SELECTION ;
 int TRUE ;
 int scsi_nextbyte () ;
 scalar_t__ scsi_phase ;

void PBI_SCSI_PutACK(int newack)
{
 if (newack != PBI_SCSI_ACK) {

  PBI_SCSI_ACK = newack;
  if (PBI_SCSI_ACK) {

   PBI_SCSI_REQ = FALSE;
  }
  else {

   if (scsi_phase != SCSI_PHASE_SELECTION) {
    PBI_SCSI_REQ = TRUE;
    scsi_nextbyte();
   }
  }
 }
}
