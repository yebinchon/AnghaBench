
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D (int ) ;
 void* FALSE ;
 void* PBI_SCSI_BSY ;
 void* PBI_SCSI_CD ;
 void* PBI_SCSI_IO ;
 void* PBI_SCSI_MSG ;
 void* PBI_SCSI_REQ ;






 void* TRUE ;
 int printf (char*,int) ;
 scalar_t__ scsi_bufpos ;
 int scsi_phase ;

__attribute__((used)) static void scsi_changephase(int phase)
{
 D(printf("scsi_changephase:%d\n",phase));
 switch(phase) {
  case 129:
    PBI_SCSI_REQ = FALSE;
    PBI_SCSI_BSY = FALSE;
    PBI_SCSI_CD = FALSE;
    PBI_SCSI_IO = FALSE;
    PBI_SCSI_MSG = FALSE;
    break;
  case 131:
    PBI_SCSI_REQ = TRUE;
    PBI_SCSI_BSY = TRUE;
    PBI_SCSI_CD = FALSE;
    PBI_SCSI_IO = FALSE;
    PBI_SCSI_MSG = FALSE;
    break;
  case 132:
    PBI_SCSI_REQ = TRUE;
    PBI_SCSI_BSY = TRUE;
    PBI_SCSI_CD = FALSE;
    PBI_SCSI_IO = TRUE;
    PBI_SCSI_MSG = FALSE;
    break;
  case 133:
    PBI_SCSI_REQ = TRUE;
    PBI_SCSI_BSY = TRUE;
    PBI_SCSI_CD = TRUE;
    PBI_SCSI_IO = FALSE;
    PBI_SCSI_MSG = FALSE;
    break;
  case 128:
    PBI_SCSI_REQ = TRUE;
    PBI_SCSI_BSY = TRUE;
    PBI_SCSI_CD = TRUE;
    PBI_SCSI_IO = TRUE;
    PBI_SCSI_MSG = FALSE;
    break;
  case 130:
    PBI_SCSI_REQ = TRUE;
    PBI_SCSI_BSY = TRUE;
    PBI_SCSI_CD = TRUE;
    PBI_SCSI_IO = FALSE;
    PBI_SCSI_MSG = TRUE;
    break;
 }
 scsi_bufpos = 0;
 scsi_phase = phase;
}
