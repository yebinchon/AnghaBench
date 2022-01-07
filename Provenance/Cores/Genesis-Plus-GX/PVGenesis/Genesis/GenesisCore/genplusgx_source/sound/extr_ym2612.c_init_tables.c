
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int ** dt_tab; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {TYPE_2__ OPN; } ;
typedef int INT32 ;


 double ENV_STEP ;
 int M_PI ;
 int SIN_LEN ;
 int TL_RES_LEN ;
 scalar_t__* dt_tab ;
 double floor (double) ;
 scalar_t__** lfo_pm_output ;
 int* lfo_pm_table ;
 int log (int) ;
 int pow (int,int) ;
 double sin (int) ;
 int* sin_tab ;
 int* tl_tab ;
 TYPE_3__ ym2612 ;

__attribute__((used)) static void init_tables(void)
{
  signed int d,i,x;
  signed int n;
  double o,m;


  for (x=0; x<TL_RES_LEN; x++)
  {
    m = (1<<16) / pow(2,(x+1) * (ENV_STEP/4.0) / 8.0);
    m = floor(m);




    n = (int)m;
    n >>= 4;
    if (n&1)
      n = (n>>1)+1;
    else
      n = n>>1;

    n <<= 2;


    tl_tab[ x*2 + 0 ] = n;
    tl_tab[ x*2 + 1 ] = -tl_tab[ x*2 + 0 ];






    for (i=1; i<13; i++)
    {
      tl_tab[ x*2+0 + i*2*TL_RES_LEN ] = tl_tab[ x*2+0 ]>>i;
      tl_tab[ x*2+1 + i*2*TL_RES_LEN ] = -tl_tab[ x*2+0 + i*2*TL_RES_LEN ];
    }
  }


  for (i=0; i<SIN_LEN; i++)
  {

    m = sin( ((i*2)+1) * M_PI / SIN_LEN );


    if (m>0.0)
      o = 8*log(1.0/m)/log(2);
    else
      o = 8*log(-1.0/m)/log(2);

    o = o / (ENV_STEP/4);

    n = (int)(2.0*o);
    if (n&1)
      n = (n>>1)+1;
    else
      n = n>>1;


    sin_tab[ i ] = n*2 + (m>=0.0? 0: 1 );
  }


  for(i = 0; i < 8; i++)
  {
    UINT8 fnum;
    for (fnum=0; fnum<128; fnum++)
    {
      UINT8 value;
      UINT8 step;
      UINT32 offset_depth = i;
      UINT32 offset_fnum_bit;
      UINT32 bit_tmp;

      for (step=0; step<8; step++)
      {
        value = 0;
        for (bit_tmp=0; bit_tmp<7; bit_tmp++)
        {
          if (fnum & (1<<bit_tmp))
          {
            offset_fnum_bit = bit_tmp * 8;
            value += lfo_pm_output[offset_fnum_bit + offset_depth][step];
          }
        }

        lfo_pm_table[(fnum*32*8) + (i*32) + step + 0] = value;
        lfo_pm_table[(fnum*32*8) + (i*32) +(step^7)+ 8] = value;
        lfo_pm_table[(fnum*32*8) + (i*32) + step +16] = -value;
        lfo_pm_table[(fnum*32*8) + (i*32) +(step^7)+24] = -value;
      }
    }
  }


  for (d = 0;d <= 3;d++)
  {
    for (i = 0;i <= 31;i++)
    {
      ym2612.OPN.ST.dt_tab[d][i] = (INT32) dt_tab[d*32 + i];
      ym2612.OPN.ST.dt_tab[d+4][i] = -ym2612.OPN.ST.dt_tab[d][i];
    }
  }

}
