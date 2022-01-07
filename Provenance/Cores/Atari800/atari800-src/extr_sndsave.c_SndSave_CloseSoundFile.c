
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int byteswritten ;
 int fclose (int *) ;
 scalar_t__ fseek (int *,int,int ) ;
 scalar_t__ putc (int ,int *) ;
 int * sndoutput ;
 int write32 (int) ;

int SndSave_CloseSoundFile(void)
{
 int bSuccess = TRUE;
 char aligned = 0;

 if (sndoutput != ((void*)0)) {

  if (byteswritten & 1) {
   if (putc(0, sndoutput) == EOF)
    bSuccess = FALSE;
   else
    aligned = 1;
  }

  if (bSuccess) {

   if (fseek(sndoutput, 4, SEEK_SET) != 0)
    bSuccess = FALSE;
   else {



    write32(byteswritten + 36 + aligned);
    if (fseek(sndoutput, 40, SEEK_SET) != 0)
     bSuccess = FALSE;
    else {


     write32(byteswritten);
    }
   }
  }
  fclose(sndoutput);
  sndoutput = ((void*)0);
 }

 return bSuccess;
}
