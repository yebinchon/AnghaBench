
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int int32 ;


 int BlitScreen (int *) ;
 int EO_NOTHROTTLE ;
 int FCEUD_UpdateInput () ;
 scalar_t__ FCEUI_EmulationPaused () ;
 int GetMaxSound () ;
 int GetWriteSound () ;
 int NoWaiting ;
 int SpeedThrottle () ;
 int WriteSound (int*,int) ;
 int eoptions ;
 int fps_scale ;
 int inited ;

void FCEUD_Update(uint8 *XBuf, int32 *Buffer, int Count)
{




 int ocount = Count;

 Count = (Count<<8)/fps_scale;
 if(Count)
 {
  int32 can=GetWriteSound();
  static int uflow=0;
  int32 tmpcan;


  if(can >= GetMaxSound() && fps_scale<=256) uflow=1;

  if(can > Count) can=Count;
  else uflow=0;

  WriteSound(Buffer,can);


  tmpcan = GetWriteSound();

  if(fps_scale>256 || ((tmpcan < Count*0.90) && !uflow))
  {
   if(XBuf && (inited&4) && !(NoWaiting & 2))
    BlitScreen(XBuf);
   Buffer+=can;
   Count-=can;
   if(Count)
   {
    if(NoWaiting)
    {
     can=GetWriteSound();
     if(Count>can) Count=can;
     WriteSound(Buffer,Count);
    }
    else
    {
     while(Count>0)
     {
      WriteSound(Buffer,(Count<ocount) ? Count : ocount);
      Count -= ocount;
     }
    }
   }
  }
 }
 else
 {
  if(!NoWaiting && (!(eoptions&EO_NOTHROTTLE) || FCEUI_EmulationPaused()))
   SpeedThrottle();
  if(XBuf && (inited&4))
  {
   BlitScreen(XBuf);
  }
 }
 FCEUD_UpdateInput();
}
