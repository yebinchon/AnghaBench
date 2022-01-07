
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uptrval ;
typedef int tableType_t ;
struct TYPE_3__ {int internal_donotuse; } ;
typedef int LZ4_stream_t_internal ;
typedef TYPE_1__ LZ4_stream_t ;


 int ACCELERATION_DEFAULT ;
 int LZ4_64Klimit ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_generic (int *,char const*,char*,int,int *,int,int ,int const,int ,int ,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 scalar_t__ MAX_DISTANCE ;
 int byPtr ;
 int const byU16 ;
 int byU32 ;
 int limitedOutput ;
 int noDict ;
 int noDictIssue ;
 int notLimited ;

int LZ4_compress_fast_extState(void* state, const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
    LZ4_stream_t_internal* ctx = &((LZ4_stream_t*)state)->internal_donotuse;
    if (acceleration < 1) acceleration = ACCELERATION_DEFAULT;
    LZ4_resetStream((LZ4_stream_t*)state);
    if (maxOutputSize >= LZ4_compressBound(inputSize)) {
        if (inputSize < LZ4_64Klimit) {
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), 0, notLimited, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > MAX_DISTANCE)) ? byPtr : byU32;
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), 0, notLimited, tableType, noDict, noDictIssue, acceleration);
        }
    } else {
        if (inputSize < LZ4_64Klimit) {;
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > MAX_DISTANCE)) ? byPtr : byU32;
            return LZ4_compress_generic(ctx, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, tableType, noDict, noDictIssue, acceleration);
        }
    }
}
