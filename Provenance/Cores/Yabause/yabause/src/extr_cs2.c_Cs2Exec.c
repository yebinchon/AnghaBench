
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int size; int numblocks; } ;
typedef TYPE_3__ partition_struct ;
struct TYPE_7__ {int HIRQ; } ;
struct TYPE_9__ {scalar_t__ _statuscycles; scalar_t__ _periodiccycles; int _commandtiming; scalar_t__ _statustiming; int status; int isdiskchanged; scalar_t__ _periodictiming; int isonesectorstored; int repcnt; int maxrepeat; scalar_t__ carttype; TYPE_2__ reg; scalar_t__ _command; int FAD; void* track; int playFAD; int playtype; int playendFAD; int isbufferfull; int blockfreespace; int partition; TYPE_1__* cdi; } ;
struct TYPE_6__ {int (* GetStatus ) () ;int (* ReadAheadFAD ) (int ) ;} ;


 scalar_t__ CART_JAPMODEM ;
 scalar_t__ CART_NETLINK ;
 int CDB_HIRQ_CSCT ;
 int CDB_HIRQ_EFLS ;
 int CDB_HIRQ_PEND ;
 int CDB_HIRQ_SCDQ ;
 int CDB_PLAYTYPE_FILE ;
 int CDB_STAT_NODISC ;
 int CDB_STAT_OPEN ;

 int CDB_STAT_PERI ;




 int CDLOG (char*,...) ;
 TYPE_5__* Cs2Area ;
 int Cs2Execute () ;
 void* Cs2FADToTrack (int ) ;
 int Cs2ReadFilteredSector (int ,TYPE_3__**) ;
 int Cs2SetTiming (int ) ;
 int JapModemExec (int) ;
 int NetlinkExec (int) ;
 int doCDReport (int) ;
 int stub1 () ;
 int stub2 (int ) ;

void Cs2Exec(u32 timing) {
   Cs2Area->_statuscycles += timing * 3;
   Cs2Area->_periodiccycles += timing * 3;

   if (Cs2Area->_commandtiming > 0)
   {
      if (Cs2Area->_commandtiming < timing)
      {
         Cs2Execute();
         Cs2Area->_commandtiming = 0;
      }
      else
         Cs2Area->_commandtiming -= timing;
   }

   if (Cs2Area->_statuscycles >= Cs2Area->_statustiming)
   {
      Cs2Area->_statuscycles -= Cs2Area->_statustiming;
      switch(Cs2Area->cdi->GetStatus())
      {
         case 0:
         case 1:
            if ((Cs2Area->status & 0xF) == CDB_STAT_NODISC ||
                (Cs2Area->status & 0xF) == CDB_STAT_OPEN)
            {
               Cs2Area->status = 132;
               Cs2Area->isdiskchanged = 1;
            }
            break;
         case 2:

            if ((Cs2Area->status & 0xF) != CDB_STAT_NODISC)
               Cs2Area->status = CDB_STAT_NODISC;
            break;
         case 3:

            if ((Cs2Area->status & 0xF) != CDB_STAT_OPEN)
               Cs2Area->status = CDB_STAT_OPEN;
            break;
         default: break;
      }
   }

   if (Cs2Area->_periodiccycles >= Cs2Area->_periodictiming)
   {
      Cs2Area->_periodiccycles -= Cs2Area->_periodictiming;


      switch (Cs2Area->status & 0xF) {
         case 132:
         {



               break;
         }
         case 131:
         {
            partition_struct * playpartition;
            int ret = Cs2ReadFilteredSector(Cs2Area->FAD, &playpartition);

            switch (ret)
            {
               case 0:

                  Cs2Area->FAD++;
                  Cs2Area->cdi->ReadAheadFAD(Cs2Area->FAD);

                  if (playpartition != ((void*)0))
                  {

                     CDLOG("partition number = %d blocks = %d blockfreespace = %d fad = %x playpartition->size = %x isbufferfull = %x\n", (playpartition - Cs2Area->partition), playpartition->numblocks, Cs2Area->blockfreespace, Cs2Area->FAD, playpartition->size, Cs2Area->isbufferfull);

                     Cs2Area->reg.HIRQ |= CDB_HIRQ_CSCT;
                     Cs2Area->isonesectorstored = 1;

                     if (Cs2Area->FAD >= Cs2Area->playendFAD) {

                        if (Cs2Area->repcnt >= Cs2Area->maxrepeat) {

                           Cs2Area->status = 132;
                           Cs2SetTiming(0);
                           Cs2Area->reg.HIRQ |= CDB_HIRQ_PEND;

                           if (Cs2Area->playtype == CDB_PLAYTYPE_FILE)
                              Cs2Area->reg.HIRQ |= CDB_HIRQ_EFLS;

                           CDLOG("PLAY HAS ENDED\n");
                        }
                        else {

                           Cs2Area->FAD = Cs2Area->playFAD;
                           if (Cs2Area->repcnt < 0xE)
                              Cs2Area->repcnt++;
                           Cs2Area->track = Cs2FADToTrack(Cs2Area->FAD);

                           CDLOG("PLAY HAS REPEATED\n");
                        }
                     }
                     if (Cs2Area->isbufferfull) {
                        CDLOG("BUFFER IS FULL\n");

                     }
                  }
                  else
                  {
                     CDLOG("Sector filtered out\n");
                     if (Cs2Area->FAD >= Cs2Area->playendFAD) {

                        if (Cs2Area->repcnt >= Cs2Area->maxrepeat) {

                           Cs2Area->status = 132;
                           Cs2SetTiming(0);
                           Cs2Area->reg.HIRQ |= CDB_HIRQ_PEND;

                           if (Cs2Area->playtype == CDB_PLAYTYPE_FILE)
                              Cs2Area->reg.HIRQ |= CDB_HIRQ_EFLS;

                           CDLOG("PLAY HAS ENDED\n");
                        }
                        else {
                           Cs2Area->FAD = Cs2Area->playFAD;
                           if (Cs2Area->repcnt < 0xE)
                              Cs2Area->repcnt++;
                           Cs2Area->track = Cs2FADToTrack(Cs2Area->FAD);

                           CDLOG("PLAY HAS REPEATED\n");
                        }
                     }
                  }
                  break;
               case -1:

                  break;
               case -2:

                  break;
            }

            break;
         }
         case 128:
            break;
         case 129:
            break;
         case 130:
            break;
         default: break;
      }

      if (Cs2Area->_command)
         return;

      Cs2Area->status |= CDB_STAT_PERI;


      doCDReport(Cs2Area->status);

      Cs2Area->reg.HIRQ |= CDB_HIRQ_SCDQ;
   }

   if(Cs2Area->carttype == CART_NETLINK)
      NetlinkExec(timing);
   else if (Cs2Area->carttype == CART_JAPMODEM)
      JapModemExec(timing);
}
