
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_CHANNELS ;
 int SAMPLECOUNT ;
 scalar_t__** channelleftvol_lookup ;
 scalar_t__** channelrightvol_lookup ;
 unsigned int** channels ;
 unsigned int** channelsend ;
 scalar_t__* channelstep ;
 int* channelstepremainder ;
 scalar_t__ flag ;
 int fprintf (int ,char*) ;
 short* mixbuffer ;
 int stderr ;

void I_UpdateSound( void )
{
  register unsigned int sample;
  register int dl;
  register int dr;


  signed short* leftout;
  signed short* rightout;
  signed short* leftend;

  int step;


  int chan;



    leftout = mixbuffer;
    rightout = mixbuffer+1;
    step = 2;



    leftend = mixbuffer + SAMPLECOUNT*step;




    while (leftout != leftend)
    {

 dl = 0;
 dr = 0;




 for ( chan = 0; chan < NUM_CHANNELS; chan++ )
 {

     if (channels[ chan ])
     {

  sample = *channels[ chan ];




  dl += channelleftvol_lookup[ chan ][sample];
  dr += channelrightvol_lookup[ chan ][sample];

  channelstepremainder[ chan ] += channelstep[ chan ];

  channels[ chan ] += channelstepremainder[ chan ] >> 16;

  channelstepremainder[ chan ] &= 65536-1;


  if (channels[ chan ] >= channelsend[ chan ])
      channels[ chan ] = 0;
     }
 }







 if (dl > 0x7fff)
     *leftout = 0x7fff;
 else if (dl < -0x8000)
     *leftout = -0x8000;
 else
     *leftout = dl;


 if (dr > 0x7fff)
     *rightout = 0x7fff;
 else if (dr < -0x8000)
     *rightout = -0x8000;
 else
     *rightout = dr;


 leftout += step;
 rightout += step;
    }
}
