
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dislr; int disll; int efslr; int efsll; int lfoemw; int lfofmw; int ecurp; int ecnt; } ;
typedef TYPE_1__ slot_t ;
struct TYPE_6__ {int midflag; int timacnt; int timbcnt; int timccnt; TYPE_1__* slot; scalar_t__ scilv2; scalar_t__ scilv1; scalar_t__ scilv0; scalar_t__ scipd; scalar_t__ scieb; scalar_t__ mcipd; scalar_t__ mcieb; scalar_t__ timcsd; scalar_t__ timbsd; scalar_t__ timasd; scalar_t__ midflag2; scalar_t__ midoutcnt; scalar_t__ midincnt; scalar_t__ dmlen; scalar_t__ dmfl; scalar_t__ drga; scalar_t__ dmea; scalar_t__ ca; scalar_t__ mslc; scalar_t__ rbp; scalar_t__ rbl; scalar_t__ mvol; scalar_t__ mem4b; } ;


 int SCSP_ENV_DE ;
 int SCSP_ENV_RELEASE ;
 int SCSP_MIDI_IN_EMP ;
 int SCSP_MIDI_OUT_EMP ;
 int memset (TYPE_1__*,int ,int) ;
 int new_scsp ;
 int new_scsp_reset (int *) ;
 TYPE_3__ scsp ;
 int scsp_lfo_sawt_e ;
 int scsp_lfo_sawt_f ;
 TYPE_1__* scsp_reg ;

void
scsp_reset (void)
{
  slot_t *slot;

  memset(scsp_reg, 0, 0x1000);

  scsp.mem4b = 0;
  scsp.mvol = 0;
  scsp.rbl = 0;
  scsp.rbp = 0;
  scsp.mslc = 0;
  scsp.ca = 0;

  scsp.dmea = 0;
  scsp.drga = 0;
  scsp.dmfl = 0;
  scsp.dmlen = 0;

  scsp.midincnt = 0;
  scsp.midoutcnt = 0;
  scsp.midflag = SCSP_MIDI_IN_EMP | SCSP_MIDI_OUT_EMP;
  scsp.midflag2 = 0;

  scsp.timacnt = 0xFF00;
  scsp.timbcnt = 0xFF00;
  scsp.timccnt = 0xFF00;
  scsp.timasd = 0;
  scsp.timbsd = 0;
  scsp.timcsd = 0;

  scsp.mcieb = 0;
  scsp.mcipd = 0;
  scsp.scieb = 0;
  scsp.scipd = 0;
  scsp.scilv0 = 0;
  scsp.scilv1 = 0;
  scsp.scilv2 = 0;

  for(slot = &(scsp.slot[0]); slot < &(scsp.slot[32]); slot++)
    {
      memset(slot, 0, sizeof(slot_t));
      slot->ecnt = SCSP_ENV_DE;
      slot->ecurp = SCSP_ENV_RELEASE;
      slot->dislr = slot->disll = 31;
      slot->efslr = slot->efsll = 31;


  slot->lfofmw = scsp_lfo_sawt_f;
  slot->lfoemw = scsp_lfo_sawt_e;
    }



}
