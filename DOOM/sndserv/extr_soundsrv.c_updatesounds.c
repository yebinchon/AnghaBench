
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_SubmitOutputBuffer (int ,int ) ;
 int SAMPLECOUNT ;
 int mix () ;
 int mixbuffer ;

void updatesounds(void)
{

    mix();
    I_SubmitOutputBuffer(mixbuffer, SAMPLECOUNT);

}
