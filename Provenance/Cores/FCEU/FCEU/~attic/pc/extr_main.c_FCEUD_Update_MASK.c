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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EO_NOTHROTTLE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int NoWaiting ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int eoptions ; 
 int fps_scale ; 
 int inited ; 

void FUNC7(uint8 *XBuf, int32 *Buffer, int Count)
{
 #ifdef NETWORK
 extern int FCEUDnetplay;
 #endif

 int ocount = Count;
 // apply frame scaling to Count
 Count = (Count<<8)/fps_scale;
 if(Count)
 {
  int32 can=FUNC4();
  static int uflow=0;
  int32 tmpcan;

  // don't underflow when scaling fps
  if(can >= FUNC3() && fps_scale<=256) uflow=1;	/* Go into massive underflow mode. */

  if(can > Count) can=Count;
  else uflow=0;

  FUNC6(Buffer,can);

  //if(uflow) puts("Underflow");
  tmpcan = FUNC4();
  // don't underflow when scaling fps
  if(fps_scale>256 || ((tmpcan < Count*0.90) && !uflow))
  {
   if(XBuf && (inited&4) && !(NoWaiting & 2))
    FUNC0(XBuf);
   Buffer+=can;
   Count-=can;
   if(Count)
   {
    if(NoWaiting)
    {
     can=FUNC4(); 
     if(Count>can) Count=can;
     FUNC6(Buffer,Count);
    }
    else
    {
     while(Count>0)
     {
      FUNC6(Buffer,(Count<ocount) ? Count : ocount);
      Count -= ocount;
     }
    }
   }
  } //else puts("Skipped");
  #ifdef NETWORK
  else if(!NoWaiting && FCEUDnetplay && (uflow || tmpcan >= (Count * 1.8)))
  {
   if(Count > tmpcan) Count=tmpcan;
   while(tmpcan > 0)
   {
//    printf("Overwrite: %d\n", (Count <= tmpcan)?Count : tmpcan);
    WriteSound(Buffer, (Count <= tmpcan)?Count : tmpcan);
    tmpcan -= Count;
   }
  }
  #endif

 }
 else
 {
  if(!NoWaiting && (!(eoptions&EO_NOTHROTTLE) || FUNC2()))
   FUNC5();
  if(XBuf && (inited&4))
  {
   FUNC0(XBuf);
  }
 }
 FUNC1();
 //if(!Count && !NoWaiting && !(eoptions&EO_NOTHROTTLE))
 // SpeedThrottle();
 //if(XBuf && (inited&4))
 //{
 // BlitScreen(XBuf);
 //}
 //if(Count)
 // WriteSound(Buffer,Count,NoWaiting);
 //FCEUD_UpdateInput();
}