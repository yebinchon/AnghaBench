
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int TL; int TLL; int ksl; } ;
typedef TYPE_1__ YM2413_OPLL_SLOT ;
struct TYPE_9__ {int ksl_base; int block_fnum; int sus; int kcode; int fc; TYPE_1__* SLOT; } ;
typedef TYPE_2__ YM2413_OPLL_CH ;
typedef int UINT8 ;
struct TYPE_10__ {int** inst_tab; int rhythm; int* instvol_r; int* fn_tab; TYPE_2__* P_CH; } ;


 int CALC_FCSLOT (TYPE_2__*,TYPE_1__*) ;
 int ENV_BITS ;
 int KEY_OFF (TYPE_1__*,int) ;
 int KEY_ON (TYPE_1__*,int) ;
 size_t SLOT1 ;
 size_t SLOT2 ;
 int* ksl_tab ;
 int load_instrument (int,int,int*) ;
 int update_instrument_zero (int) ;
 TYPE_3__ ym2413 ;

__attribute__((used)) static void OPLLWriteReg(int r, int v)
{
  YM2413_OPLL_CH *CH;
  YM2413_OPLL_SLOT *SLOT;


  r &= 0xff;
  v &= 0xff;

  switch(r&0xf0)
  {
    case 0x00:
    {
      switch(r&0x0f)
      {
        case 0x00:
        case 0x01:
        case 0x02:
        case 0x03:
        case 0x04:
        case 0x05:
        case 0x06:
        case 0x07:
        {
          ym2413.inst_tab[0][r] = v;
          update_instrument_zero(r);
          break;
        }

        case 0x0e:
        {
          if(v&0x20)
          {

            if ((ym2413.rhythm&0x20)==0)
            {

              load_instrument(6, 12, &ym2413.inst_tab[16][0]);


              load_instrument(7, 14, &ym2413.inst_tab[17][0]);

              CH = &ym2413.P_CH[7];
              SLOT = &CH->SLOT[SLOT1];
              SLOT->TL = ((ym2413.instvol_r[7]>>4)<<2)<<(ENV_BITS-2-7);
              SLOT->TLL = SLOT->TL + (CH->ksl_base>>SLOT->ksl);


              load_instrument(8, 16, &ym2413.inst_tab[18][0]);

              CH = &ym2413.P_CH[8];
              SLOT = &CH->SLOT[SLOT1];
              SLOT->TL = ((ym2413.instvol_r[8]>>4)<<2)<<(ENV_BITS-2-7);
              SLOT->TLL = SLOT->TL + (CH->ksl_base>>SLOT->ksl);
            }


            if(v&0x10)
            {
              KEY_ON (&ym2413.P_CH[6].SLOT[SLOT1], 2);
              KEY_ON (&ym2413.P_CH[6].SLOT[SLOT2], 2);
            }
            else
            {
              KEY_OFF(&ym2413.P_CH[6].SLOT[SLOT1],~2);
              KEY_OFF(&ym2413.P_CH[6].SLOT[SLOT2],~2);
            }


            if(v&0x01) KEY_ON (&ym2413.P_CH[7].SLOT[SLOT1], 2);
            else KEY_OFF(&ym2413.P_CH[7].SLOT[SLOT1],~2);


            if(v&0x08) KEY_ON (&ym2413.P_CH[7].SLOT[SLOT2], 2);
            else KEY_OFF(&ym2413.P_CH[7].SLOT[SLOT2],~2);


            if(v&0x04) KEY_ON (&ym2413.P_CH[8].SLOT[SLOT1], 2);
            else KEY_OFF(&ym2413.P_CH[8].SLOT[SLOT1],~2);


            if(v&0x02) KEY_ON (&ym2413.P_CH[8].SLOT[SLOT2], 2);
            else KEY_OFF(&ym2413.P_CH[8].SLOT[SLOT2],~2);
          }
          else
          {

            if (ym2413.rhythm&0x20)
            {

              load_instrument(6, 12, &ym2413.inst_tab[ym2413.instvol_r[6]>>4][0]);


              load_instrument(7, 14, &ym2413.inst_tab[ym2413.instvol_r[7]>>4][0]);


              load_instrument(8, 16, &ym2413.inst_tab[ym2413.instvol_r[8]>>4][0]);
            }


            KEY_OFF(&ym2413.P_CH[6].SLOT[SLOT1],~2);
            KEY_OFF(&ym2413.P_CH[6].SLOT[SLOT2],~2);


            KEY_OFF(&ym2413.P_CH[7].SLOT[SLOT1],~2);


            KEY_OFF(&ym2413.P_CH[7].SLOT[SLOT2],~2);


            KEY_OFF(&ym2413.P_CH[8].SLOT[SLOT1],~2);


            KEY_OFF(&ym2413.P_CH[8].SLOT[SLOT2],~2);
          }

          ym2413.rhythm = v&0x3f;
          break;
        }
      }

      break;
    }

    case 0x10:
    case 0x20:
    {
      int block_fnum;

      int chan = r&0x0f;

      if (chan >= 9)
        chan -= 9;

      CH = &ym2413.P_CH[chan];

      if(r&0x10)
      {

        block_fnum = (CH->block_fnum&0x0f00) | v;
      }
      else
      {

        block_fnum = ((v&0x0f)<<8) | (CH->block_fnum&0xff);

        if(v&0x10)
        {
          KEY_ON (&CH->SLOT[SLOT1], 1);
          KEY_ON (&CH->SLOT[SLOT2], 1);
        }
        else
        {
          KEY_OFF(&CH->SLOT[SLOT1],~1);
          KEY_OFF(&CH->SLOT[SLOT2],~1);
        }

        CH->sus = v & 0x20;
      }


      if(CH->block_fnum != block_fnum)
      {
        UINT8 block;
        CH->block_fnum = block_fnum;


        CH->kcode = (block_fnum&0x0f00)>>8;

        CH->ksl_base = ksl_tab[block_fnum>>5];

        block_fnum = block_fnum * 2;
        block = (block_fnum&0x1c00) >> 10;
        CH->fc = ym2413.fn_tab[block_fnum&0x03ff] >> (7-block);


        CH->SLOT[SLOT1].TLL = CH->SLOT[SLOT1].TL + (CH->ksl_base>>CH->SLOT[SLOT1].ksl);
        CH->SLOT[SLOT2].TLL = CH->SLOT[SLOT2].TL + (CH->ksl_base>>CH->SLOT[SLOT2].ksl);


        CALC_FCSLOT(CH,&CH->SLOT[SLOT1]);
        CALC_FCSLOT(CH,&CH->SLOT[SLOT2]);
      }

      break;
    }

    case 0x30:
    {
      int chan = r&0x0f;

      if (chan >= 9)
        chan -= 9;

      CH = &ym2413.P_CH[chan];
      SLOT = &CH->SLOT[SLOT2];
      SLOT->TL = ((v&0x0f)<<2)<<(ENV_BITS-2-7);
      SLOT->TLL = SLOT->TL + (CH->ksl_base>>SLOT->ksl);


      if ((chan>=6) && (ym2413.rhythm&0x20))
      {


        if (chan>=7)
        {
          SLOT = &CH->SLOT[SLOT1];
          SLOT->TL = ((v>>4)<<2)<<(ENV_BITS-2-7);
          SLOT->TLL = SLOT->TL + (CH->ksl_base>>SLOT->ksl);
        }
      }
      else
      {
        if ((ym2413.instvol_r[chan]&0xf0) != (v&0xf0))
        {
          ym2413.instvol_r[chan] = v;
          load_instrument(chan, chan * 2, &ym2413.inst_tab[v>>4][0]);
        }
      }

      break;
    }

    default:
      break;
  }
}
