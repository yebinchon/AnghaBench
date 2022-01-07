
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SLAndroidSimpleBufferQueueItf ;


 int assert (int) ;
 scalar_t__ bqPlayerBufferQueue ;
 int pop_index () ;
 scalar_t__* soundoffset ;

void bqPlayerCallback(SLAndroidSimpleBufferQueueItf bq, void *context)
{
    assert(bq == bqPlayerBufferQueue);
    assert(((void*)0) == context);


   int playpos = pop_index();

   soundoffset[playpos] = 0;

}
