
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double ENV_STEP ;
 int M_PI ;
 int SIN_BITS ;
 int SIN_LEN ;
 int TL_RES_LEN ;
 int TL_TAB_LEN ;
 double floor (double) ;
 int log (int) ;
 int pow (int,int) ;
 double sin (int) ;
 int* sin_tab ;
 int* tl_tab ;

__attribute__((used)) static int init_tables(void)
{
  signed int i,x;
  signed int n;
  double o,m;

  for (x=0; x<TL_RES_LEN; x++)
  {
    m = (1<<16) / pow(2, (x+1) * (ENV_STEP/4.0) / 8.0);
    m = floor(m);




    n = (int)m;
    n >>= 4;
    if (n&1)
      n = (n>>1)+1;
    else
      n = n>>1;

    tl_tab[ x*2 + 0 ] = n;
    tl_tab[ x*2 + 1 ] = -tl_tab[ x*2 + 0 ];

    for (i=1; i<11; i++)
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




    if (i & (1<<(SIN_BITS-1)) )
      sin_tab[1*SIN_LEN+i] = TL_TAB_LEN;
    else
      sin_tab[1*SIN_LEN+i] = sin_tab[i];
  }

  return 1;
}
