
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct revmodel {TYPE_2__* allpassL; void** bufallpass; TYPE_1__* combL; void** bufcomb; } ;
struct TYPE_4__ {double bufsize; float feedback; void* buffer; } ;
struct TYPE_3__ {double bufsize; void* buffer; } ;


 int initialdamp ;
 int initialdry ;
 int initialmode ;
 int initialroom ;
 int initialwet ;
 int initialwidth ;
 void* malloc (double) ;
 int memset (void*,int ,double) ;
 unsigned int numallpasses ;
 unsigned int numcombs ;
 int revmodel_setdamp (struct revmodel*,int ) ;
 int revmodel_setdry (struct revmodel*,int ) ;
 int revmodel_setmode (struct revmodel*,int ) ;
 int revmodel_setroomsize (struct revmodel*,int ) ;
 int revmodel_setwet (struct revmodel*,int ) ;
 int revmodel_setwidth (struct revmodel*,int ) ;

__attribute__((used)) static void revmodel_init(struct revmodel *rev,int srate)
{

  static const int comb_lengths[8] = { 1116,1188,1277,1356,1422,1491,1557,1617 };
  static const int allpass_lengths[4] = { 225,341,441,556 };
  double r = srate * (1 / 44100.0);
  unsigned c;

   for (c = 0; c < numcombs; ++c)
   {
    rev->bufcomb[c] = malloc(r*comb_lengths[c]*sizeof(float));
    rev->combL[c].buffer = rev->bufcomb[c];
         memset(rev->combL[c].buffer,0,r*comb_lengths[c]*sizeof(float));
         rev->combL[c].bufsize=r*comb_lengths[c];
  }

   for (c = 0; c < numallpasses; ++c)
   {
    rev->bufallpass[c] = malloc(r*allpass_lengths[c]*sizeof(float));
    rev->allpassL[c].buffer = rev->bufallpass[c];
         memset(rev->allpassL[c].buffer,0,r*allpass_lengths[c]*sizeof(float));
         rev->allpassL[c].bufsize=r*allpass_lengths[c];
         rev->allpassL[c].feedback = 0.5f;
  }

   revmodel_setwet(rev, initialwet);
   revmodel_setroomsize(rev, initialroom);
   revmodel_setdry(rev, initialdry);
   revmodel_setdamp(rev, initialdamp);
   revmodel_setwidth(rev, initialwidth);
   revmodel_setmode(rev, initialmode);
}
