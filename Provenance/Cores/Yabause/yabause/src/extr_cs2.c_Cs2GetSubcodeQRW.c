
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int CR1; int CR2; int CR4; int HIRQ; int CR3; } ;
struct TYPE_4__ {int* data; } ;
struct TYPE_6__ {int status; int FAD; int* TOC; int infotranstype; int* transscoderw; TYPE_2__ reg; int transfercount; TYPE_1__ workblock; void** transscodeq; int index; int track; void* ctrladdr; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_DRDY ;
 TYPE_3__* Cs2Area ;
 int Cs2FADToMSF (int,int *,int *,int *) ;
 void* ToBCD (int ) ;

void Cs2GetSubcodeQRW(void) {
   u32 rel_fad;
   u8 rel_m, rel_s, rel_f, m, s, f;




  switch(Cs2Area->reg.CR1 & 0xFF) {
     case 0:

             Cs2Area->reg.CR1 = (Cs2Area->status << 8) | 0;
             Cs2Area->reg.CR2 = 5;
             Cs2Area->reg.CR3 = 0;
             Cs2Area->reg.CR4 = 0;

             rel_fad = Cs2Area->FAD-(Cs2Area->TOC[Cs2Area->track-1] & 0xFFFFFF);
             Cs2FADToMSF(rel_fad, &rel_m, &rel_s, &rel_f);
             Cs2FADToMSF(Cs2Area->FAD, &m, &s, &f);

             Cs2Area->transscodeq[0] = Cs2Area->ctrladdr;
             Cs2Area->transscodeq[1] = ToBCD(Cs2Area->track);
             Cs2Area->transscodeq[2] = ToBCD(Cs2Area->index);
             Cs2Area->transscodeq[3] = ToBCD(rel_m);
             Cs2Area->transscodeq[4] = ToBCD(rel_s);
             Cs2Area->transscodeq[5] = ToBCD(rel_f);
             Cs2Area->transscodeq[6] = 0;
             Cs2Area->transscodeq[7] = ToBCD(m);
             Cs2Area->transscodeq[8] = ToBCD(s);
             Cs2Area->transscodeq[9] = ToBCD(f);

             Cs2Area->transfercount = 0;
             Cs2Area->infotranstype = 3;
             break;
     case 1:
     {

             static int lastfad=0;
             static u16 group=0;
             int i;

             Cs2Area->reg.CR1 = (Cs2Area->status << 8) | 0;
             Cs2Area->reg.CR2 = 12;
             Cs2Area->reg.CR3 = 0;
             if (Cs2Area->FAD != lastfad)
             {
                lastfad = Cs2Area->FAD;
                group = 0;
             }
             else
                group++;
             Cs2Area->reg.CR4 = group;

             for (i = 0; i < 24; i++)
                Cs2Area->transscoderw[i] = Cs2Area->workblock.data[2352+i+(24*group)] & 0x3F;

             Cs2Area->transfercount = 0;
             Cs2Area->infotranstype = 4;
             break;
     }
     default: break;
  }

  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_DRDY;
}
