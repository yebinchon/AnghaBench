#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  workc ;

/* Variables and functions */
 float* ATH ; 
 int EHMER_MAX ; 
 int EHMER_OFFSET ; 
 int MAX_ATH ; 
 int P_BANDS ; 
 int P_LEVELS ; 
 scalar_t__ P_LEVEL_0 ; 
 void* FUNC0 (int) ; 
 float FUNC1 (int) ; 
 float* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (float*,scalar_t__) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 float FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC9 (float***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*) ; 
 int FUNC11 (int) ; 
 float*** tonemasks ; 

__attribute__((used)) static float ***FUNC12(float curveatt_dB[P_BANDS],float binHz,int n,
                                  float center_boost, float center_decay_rate){
  int i,j,k,m;
  float ath[EHMER_MAX];
  float workc[P_BANDS][P_LEVELS][EHMER_MAX];
  float athc[P_LEVELS][EHMER_MAX];
  float *brute_buffer=FUNC2(n*sizeof(*brute_buffer));

  float ***ret=FUNC0(sizeof(*ret)*P_BANDS);

  FUNC9(workc,0,sizeof(workc));

  for(i=0;i<P_BANDS;i++){
    /* we add back in the ATH to avoid low level curves falling off to
       -infinity and unnecessarily cutting off high level curves in the
       curve limiting (last step). */

    /* A half-band's settings must be valid over the whole band, and
       it's better to mask too little than too much */
    int ath_offset=i*4;
    for(j=0;j<EHMER_MAX;j++){
      float min=999.;
      for(k=0;k<4;k++)
        if(j+k+ath_offset<MAX_ATH){
          if(min>ATH[j+k+ath_offset])min=ATH[j+k+ath_offset];
        }else{
          if(min>ATH[MAX_ATH-1])min=ATH[MAX_ATH-1];
        }
      ath[j]=min;
    }

    /* copy curves into working space, replicate the 50dB curve to 30
       and 40, replicate the 100dB curve to 110 */
    for(j=0;j<6;j++)
      FUNC8(workc[i][j+2],tonemasks[i][j],EHMER_MAX*sizeof(*tonemasks[i][j]));
    FUNC8(workc[i][0],tonemasks[i][0],EHMER_MAX*sizeof(*tonemasks[i][0]));
    FUNC8(workc[i][1],tonemasks[i][0],EHMER_MAX*sizeof(*tonemasks[i][0]));

    /* apply centered curve boost/decay */
    for(j=0;j<P_LEVELS;j++){
      for(k=0;k<EHMER_MAX;k++){
        float adj=center_boost+FUNC1(EHMER_OFFSET-k)*center_decay_rate;
        if(adj<0. && center_boost>0)adj=0.;
        if(adj>0. && center_boost<0)adj=0.;
        workc[i][j][k]+=adj;
      }
    }

    /* normalize curves so the driving amplitude is 0dB */
    /* make temp curves with the ATH overlayed */
    for(j=0;j<P_LEVELS;j++){
      FUNC3(workc[i][j],curveatt_dB[i]+100.-(j<2?2:j)*10.-P_LEVEL_0);
      FUNC8(athc[j],ath,EHMER_MAX*sizeof(**athc));
      FUNC3(athc[j],+100.-j*10.f-P_LEVEL_0);
      FUNC7(athc[j],workc[i][j]);
    }

    /* Now limit the louder curves.

       the idea is this: We don't know what the playback attenuation
       will be; 0dB SL moves every time the user twiddles the volume
       knob. So that means we have to use a single 'most pessimal' curve
       for all masking amplitudes, right?  Wrong.  The *loudest* sound
       can be in (we assume) a range of ...+100dB] SL.  However, sounds
       20dB down will be in a range ...+80], 40dB down is from ...+60],
       etc... */

    for(j=1;j<P_LEVELS;j++){
      FUNC10(athc[j],athc[j-1]);
      FUNC10(workc[i][j],athc[j]);
    }
  }

  for(i=0;i<P_BANDS;i++){
    int hi_curve,lo_curve,bin;
    ret[i]=FUNC0(sizeof(**ret)*P_LEVELS);

    /* low frequency curves are measured with greater resolution than
       the MDCT/FFT will actually give us; we want the curve applied
       to the tone data to be pessimistic and thus apply the minimum
       masking possible for a given bin.  That means that a single bin
       could span more than one octave and that the curve will be a
       composite of multiple octaves.  It also may mean that a single
       bin may span > an eighth of an octave and that the eighth
       octave values may also be composited. */

    /* which octave curves will we be compositing? */
    bin=FUNC5(FUNC6(i*.5)/binHz);
    lo_curve=  FUNC4(FUNC11(bin*binHz+1)*2);
    hi_curve=  FUNC5(FUNC11((bin+1)*binHz)*2);
    if(lo_curve>i)lo_curve=i;
    if(lo_curve<0)lo_curve=0;
    if(hi_curve>=P_BANDS)hi_curve=P_BANDS-1;

    for(m=0;m<P_LEVELS;m++){
      ret[i][m]=FUNC0(sizeof(***ret)*(EHMER_MAX+2));

      for(j=0;j<n;j++)brute_buffer[j]=999.;

      /* render the curve into bins, then pull values back into curve.
         The point is that any inherent subsampling aliasing results in
         a safe minimum */
      for(k=lo_curve;k<=hi_curve;k++){
        int l=0;

        for(j=0;j<EHMER_MAX;j++){
          int lo_bin= FUNC6(j*.125+k*.5-2.0625)/binHz;
          int hi_bin= FUNC6(j*.125+k*.5-1.9375)/binHz+1;

          if(lo_bin<0)lo_bin=0;
          if(lo_bin>n)lo_bin=n;
          if(lo_bin<l)l=lo_bin;
          if(hi_bin<0)hi_bin=0;
          if(hi_bin>n)hi_bin=n;

          for(;l<hi_bin && l<n;l++)
            if(brute_buffer[l]>workc[k][m][j])
              brute_buffer[l]=workc[k][m][j];
        }

        for(;l<n;l++)
          if(brute_buffer[l]>workc[k][m][EHMER_MAX-1])
            brute_buffer[l]=workc[k][m][EHMER_MAX-1];

      }

      /* be equally paranoid about being valid up to next half ocatve */
      if(i+1<P_BANDS){
        int l=0;
        k=i+1;
        for(j=0;j<EHMER_MAX;j++){
          int lo_bin= FUNC6(j*.125+i*.5-2.0625)/binHz;
          int hi_bin= FUNC6(j*.125+i*.5-1.9375)/binHz+1;

          if(lo_bin<0)lo_bin=0;
          if(lo_bin>n)lo_bin=n;
          if(lo_bin<l)l=lo_bin;
          if(hi_bin<0)hi_bin=0;
          if(hi_bin>n)hi_bin=n;

          for(;l<hi_bin && l<n;l++)
            if(brute_buffer[l]>workc[k][m][j])
              brute_buffer[l]=workc[k][m][j];
        }

        for(;l<n;l++)
          if(brute_buffer[l]>workc[k][m][EHMER_MAX-1])
            brute_buffer[l]=workc[k][m][EHMER_MAX-1];

      }


      for(j=0;j<EHMER_MAX;j++){
        int bin=FUNC6(j*.125+i*.5-2.)/binHz;
        if(bin<0){
          ret[i][m][j+2]=-999.;
        }else{
          if(bin>=n){
            ret[i][m][j+2]=-999.;
          }else{
            ret[i][m][j+2]=brute_buffer[bin];
          }
        }
      }

      /* add fenceposts */
      for(j=0;j<EHMER_OFFSET;j++)
        if(ret[i][m][j+2]>-200.f)break;
      ret[i][m][0]=j;

      for(j=EHMER_MAX-1;j>EHMER_OFFSET+1;j--)
        if(ret[i][m][j+2]>-200.f)
          break;
      ret[i][m][1]=j;

    }
  }

  return(ret);
}