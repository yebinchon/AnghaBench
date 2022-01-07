
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ size; int id; } ;
struct TYPE_10__ {int rifftype; TYPE_1__ riff; } ;
typedef TYPE_3__ waveheader_struct ;
struct TYPE_9__ {int size; int id; } ;
struct TYPE_11__ {int compress; int numchan; int rate; int bitspersample; int blockalign; int bytespersec; TYPE_2__ chunk; } ;
typedef TYPE_4__ fmt_struct ;
struct TYPE_12__ {scalar_t__ size; int id; } ;
typedef TYPE_5__ chunk_struct ;
struct TYPE_13__ {int member_1; int member_0; } ;
typedef TYPE_6__ IOCheck_struct ;


 int * fopen (char*,char*) ;
 int memcpy (int ,char*,int) ;
 char* wavefilename ;
 int * wavefp ;
 int ywrite (TYPE_6__*,void*,int,int,int *) ;

__attribute__((used)) static int SNDWavInit(void)
{
   waveheader_struct waveheader;
   fmt_struct fmt;
   chunk_struct data;
   IOCheck_struct check = { 0, 0 };

   if (wavefilename)
   {

      if ((wavefp = fopen(wavefilename, "wb")) == ((void*)0))
         return -1;
   }
   else
   {
      if ((wavefp = fopen("scsp.wav", "wb")) == ((void*)0))
         return -1;
   }


   memcpy(waveheader.riff.id, "RIFF", 4);
   waveheader.riff.size = 0;
   memcpy(waveheader.rifftype, "WAVE", 4);
   ywrite(&check, (void *)&waveheader, 1, sizeof(waveheader_struct), wavefp);


   memcpy(fmt.chunk.id, "fmt ", 4);
   fmt.chunk.size = 16;
   fmt.compress = 1;
   fmt.numchan = 2;
   fmt.rate = 44100;
   fmt.bitspersample = 16;
   fmt.blockalign = fmt.bitspersample / 8 * fmt.numchan;
   fmt.bytespersec = fmt.rate * fmt.blockalign;
   ywrite(&check, (void *)&fmt, 1, sizeof(fmt_struct), wavefp);


   memcpy(data.id, "data", 4);
   data.size = 0;
   ywrite(&check, (void *)&data, 1, sizeof(chunk_struct), wavefp);

   return 0;
}
