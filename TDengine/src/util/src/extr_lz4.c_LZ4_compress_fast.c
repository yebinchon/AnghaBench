
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 void* ALLOCATOR (int,int) ;
 int FREEMEM (void* const) ;
 int LZ4_compress_fast_extState (void* const,char const*,char*,int,int,int) ;

int LZ4_compress_fast(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{



    LZ4_stream_t ctx;
    void* const ctxPtr = &ctx;


    int const result = LZ4_compress_fast_extState(ctxPtr, source, dest, inputSize, maxOutputSize, acceleration);




    return result;
}
