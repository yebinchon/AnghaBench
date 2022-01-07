
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int waveheader_struct ;
typedef int fmt_struct ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ IOCheck_struct ;


 int SEEK_SET ;
 int fclose (scalar_t__) ;
 int fseek (scalar_t__,int,int ) ;
 long ftell (scalar_t__) ;
 scalar_t__ wavefp ;
 int ywrite (TYPE_1__*,void*,int,int,scalar_t__) ;

__attribute__((used)) static void SNDWavDeInit(void)
{
   if (wavefp)
   {
      long length = ftell(wavefp);
      IOCheck_struct check = { 0, 0 };


      fseek(wavefp, sizeof(waveheader_struct)-0x8, SEEK_SET);
      length -= 0x4;
      ywrite(&check, (void *)&length, 1, 4, wavefp);

      fseek(wavefp, sizeof(waveheader_struct)+sizeof(fmt_struct)+0x4, SEEK_SET);
      length -= sizeof(waveheader_struct)+sizeof(fmt_struct);
      ywrite(&check, (void *)&length, 1, 4, wavefp);
      fclose(wavefp);
   }
}
