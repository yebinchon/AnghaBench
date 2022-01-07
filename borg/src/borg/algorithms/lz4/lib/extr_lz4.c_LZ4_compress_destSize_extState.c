
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
typedef int tableType_t ;
struct TYPE_5__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_fast_extState (TYPE_1__*,char const*,char*,int,int,int) ;
 int LZ4_compress_generic (int *,char const*,char*,int,int*,int,int ,int const,int ,int ,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 scalar_t__ MAX_DISTANCE ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int fillOutput ;
 int noDict ;
 int noDictIssue ;

__attribute__((used)) static int LZ4_compress_destSize_extState (LZ4_stream_t* state, const char* src, char* dst, int* srcSizePtr, int targetDstSize)
{
    LZ4_resetStream(state);

    if (targetDstSize >= LZ4_compressBound(*srcSizePtr)) {
        return LZ4_compress_fast_extState(state, src, dst, *srcSizePtr, targetDstSize, 1);
    } else {
        if (*srcSizePtr < LZ4_64Klimit) {
            return LZ4_compress_generic(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, byU16, noDict, noDictIssue, 1);
        } else {
            tableType_t const tableType = ((sizeof(void*)==4) && ((uptrval)src > MAX_DISTANCE)) ? byPtr : byU32;
            return LZ4_compress_generic(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, tableType, noDict, noDictIssue, 1);
    } }
}
