
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adpcm_state {int sample; int index; } ;


 scalar_t__* indexTable ;
 int* stepsizeTable ;

void S_AdpcmEncode( short indata[], char outdata[], int len, struct adpcm_state *state ) {
    short *inp;
    signed char *outp;
    int val;
    int sign;
    int delta;
    int diff;
    int step;
    int valpred;
    int vpdiff;
    int index;
    int outputbuffer;
    int bufferstep;

    outp = (signed char *)outdata;
    inp = indata;

    valpred = state->sample;
    index = state->index;
    step = stepsizeTable[index];

 outputbuffer = 0;
    bufferstep = 1;

    for ( ; len > 0 ; len-- ) {
  val = *inp++;


  diff = val - valpred;
  sign = (diff < 0) ? 8 : 0;
  if ( sign ) diff = (-diff);
  delta = 0;
  vpdiff = (step >> 3);

  if ( diff >= step ) {
   delta = 4;
   diff -= step;
   vpdiff += step;
  }
  step >>= 1;
  if ( diff >= step ) {
   delta |= 2;
   diff -= step;
   vpdiff += step;
  }
  step >>= 1;
  if ( diff >= step ) {
   delta |= 1;
   vpdiff += step;
  }


  if ( sign )
    valpred -= vpdiff;
  else
    valpred += vpdiff;


  if ( valpred > 32767 )
    valpred = 32767;
  else if ( valpred < -32768 )
    valpred = -32768;


  delta |= sign;

  index += indexTable[delta];
  if ( index < 0 ) index = 0;
  if ( index > 88 ) index = 88;
  step = stepsizeTable[index];


  if ( bufferstep ) {
   outputbuffer = (delta << 4) & 0xf0;
  } else {
   *outp++ = (delta & 0x0f) | outputbuffer;
  }
  bufferstep = !bufferstep;
    }


    if ( !bufferstep )
      *outp++ = outputbuffer;

    state->sample = valpred;
    state->index = index;
}
