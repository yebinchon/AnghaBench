
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_donotuse; } ;
typedef TYPE_1__ LZ4_stream_t ;


 int LZ4_64Klimit ;
 int LZ4_compress_generic (int *,char const*,char*,int,int *,int,int ,int ,int ,int ,int) ;
 int LZ4_resetStream (TYPE_1__*) ;
 int byPtr ;
 int byU16 ;
 int byU32 ;
 int limitedOutput ;
 int noDict ;
 int noDictIssue ;

int LZ4_compress_fast_force(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
    LZ4_stream_t ctx;
    LZ4_resetStream(&ctx);

    if (inputSize < LZ4_64Klimit)
        return LZ4_compress_generic(&ctx.internal_donotuse, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, byU16, noDict, noDictIssue, acceleration);
    else
        return LZ4_compress_generic(&ctx.internal_donotuse, source, dest, inputSize, ((void*)0), maxOutputSize, limitedOutput, sizeof(void*)==8 ? byU32 : byPtr, noDict, noDictIssue, acceleration);
}
