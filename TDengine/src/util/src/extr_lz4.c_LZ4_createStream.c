
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t_internal ;
typedef int LZ4_stream_t ;


 scalar_t__ ALLOCATOR (int,int ) ;
 int LZ4_STATIC_ASSERT (int) ;
 int LZ4_STREAMSIZE ;
 int LZ4_STREAMSIZE_U64 ;
 int LZ4_resetStream (int *) ;

LZ4_stream_t* LZ4_createStream(void)
{
    LZ4_stream_t* lz4s = (LZ4_stream_t*)ALLOCATOR(8, LZ4_STREAMSIZE_U64);
    LZ4_STATIC_ASSERT(LZ4_STREAMSIZE >= sizeof(LZ4_stream_t_internal));
    LZ4_resetStream(lz4s);
    return lz4s;
}
