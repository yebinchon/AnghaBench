
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D (int ) ;
 int PBI_SCSI_SEL ;
 int SCSI_PHASE_COMMAND ;
 scalar_t__ SCSI_PHASE_SELECTION ;
 int printf (char*,int,int) ;
 int scsi_byte ;
 int scsi_changephase (int ) ;
 scalar_t__ scsi_phase ;

void PBI_SCSI_PutSEL(int newsel)
{
 if (newsel != PBI_SCSI_SEL) {

  PBI_SCSI_SEL = newsel;
  if (PBI_SCSI_SEL && scsi_phase == SCSI_PHASE_SELECTION && scsi_byte == 0x01) {
   scsi_changephase(SCSI_PHASE_COMMAND);
  }
  D(printf("changed SEL:%d  scsi_byte:%2x\n",PBI_SCSI_SEL, scsi_byte));
 }
}
