
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void LZ4_stream_t ;
typedef int BYTE ;


 scalar_t__ ALLOCATOR (int,int) ;
 int LZ4_init (void*,int *) ;

void* LZ4_create (char* inputBuffer)
{
    LZ4_stream_t* lz4ds = (LZ4_stream_t*)ALLOCATOR(8, sizeof(LZ4_stream_t));
    LZ4_init (lz4ds, (BYTE*)inputBuffer);
    return lz4ds;
}
