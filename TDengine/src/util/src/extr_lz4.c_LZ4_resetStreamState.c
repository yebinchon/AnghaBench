
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uptrval ;
typedef int LZ4_stream_t ;
typedef int BYTE ;


 int LZ4_init (int *,int *) ;

int LZ4_resetStreamState(void* state, char* inputBuffer)
{
    if ((((uptrval)state) & 3) != 0) return 1;
    LZ4_init((LZ4_stream_t*)state, (BYTE*)inputBuffer);
    return 0;
}
