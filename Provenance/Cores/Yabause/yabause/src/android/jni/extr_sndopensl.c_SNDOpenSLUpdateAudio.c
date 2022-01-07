
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
typedef int s16 ;
struct TYPE_3__ {scalar_t__ (* Enqueue ) (TYPE_1__**,scalar_t__,int) ;} ;
typedef scalar_t__ SLresult ;


 int MAX_BUFFER_CNT ;
 scalar_t__ SL_RESULT_SUCCESS ;
 TYPE_1__** bqPlayerBufferQueue ;
 size_t currentpos ;
 int mbufferSizeInBytes ;
 int muted ;
 int printf (char*) ;
 int push_index (size_t) ;
 int sdlConvert32uto16s (int *,int *,int *,int) ;
 int* soundoffset ;
 scalar_t__* stereodata16 ;
 scalar_t__ stub1 (TYPE_1__**,scalar_t__,int) ;

__attribute__((used)) static void SNDOpenSLUpdateAudio(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{



   u32 copy1size=0;
   int nextpos;

   copy1size = (num_samples * sizeof(s16) * 2);


   sdlConvert32uto16s((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)(((u8 *)stereodata16[currentpos])+soundoffset[currentpos] ), copy1size / sizeof(s16) / 2);

   soundoffset[currentpos] += copy1size;

   if (soundoffset[currentpos] >= mbufferSizeInBytes) {

      if (!muted) {


         SLresult result;
         push_index(currentpos);
         result = (*bqPlayerBufferQueue)->Enqueue(bqPlayerBufferQueue, stereodata16[currentpos], soundoffset[currentpos]);
         if (SL_RESULT_SUCCESS != result) {
            printf("Fail to Add queue");
               return;
         }
      }
      nextpos = currentpos+1;
      if( nextpos >= MAX_BUFFER_CNT ) { nextpos = 0; }
      currentpos = nextpos;

   }

}
