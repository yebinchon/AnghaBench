
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flagStaticTables; int LLTable; int MLTable; int OffTable; int hufTableX4; } ;
typedef TYPE_1__ ZSTDv05_DCtx ;


 size_t ERROR (int ) ;
 size_t FSEv05_buildDTable (int ,short*,unsigned int,unsigned int) ;
 scalar_t__ FSEv05_isError (size_t) ;
 size_t FSEv05_readNCount (short*,unsigned int*,unsigned int*,void const*,size_t) ;
 scalar_t__ HUFv05_isError (size_t) ;
 size_t HUFv05_readDTableX4 (int ,void const*,size_t) ;
 unsigned int LLFSEv05Log ;
 unsigned int MLFSEv05Log ;
 int MaxLL ;
 int MaxML ;
 int MaxOff ;
 unsigned int OffFSEv05Log ;
 int dictionary_corrupted ;

__attribute__((used)) static size_t ZSTDv05_loadEntropy(ZSTDv05_DCtx* dctx, const void* dict, size_t dictSize)
{
    size_t hSize, offcodeHeaderSize, matchlengthHeaderSize, errorCode, litlengthHeaderSize;
    short offcodeNCount[MaxOff+1];
    unsigned offcodeMaxValue=MaxOff, offcodeLog;
    short matchlengthNCount[MaxML+1];
    unsigned matchlengthMaxValue = MaxML, matchlengthLog;
    short litlengthNCount[MaxLL+1];
    unsigned litlengthMaxValue = MaxLL, litlengthLog;

    hSize = HUFv05_readDTableX4(dctx->hufTableX4, dict, dictSize);
    if (HUFv05_isError(hSize)) return ERROR(dictionary_corrupted);
    dict = (const char*)dict + hSize;
    dictSize -= hSize;

    offcodeHeaderSize = FSEv05_readNCount(offcodeNCount, &offcodeMaxValue, &offcodeLog, dict, dictSize);
    if (FSEv05_isError(offcodeHeaderSize)) return ERROR(dictionary_corrupted);
    if (offcodeLog > OffFSEv05Log) return ERROR(dictionary_corrupted);
    errorCode = FSEv05_buildDTable(dctx->OffTable, offcodeNCount, offcodeMaxValue, offcodeLog);
    if (FSEv05_isError(errorCode)) return ERROR(dictionary_corrupted);
    dict = (const char*)dict + offcodeHeaderSize;
    dictSize -= offcodeHeaderSize;

    matchlengthHeaderSize = FSEv05_readNCount(matchlengthNCount, &matchlengthMaxValue, &matchlengthLog, dict, dictSize);
    if (FSEv05_isError(matchlengthHeaderSize)) return ERROR(dictionary_corrupted);
    if (matchlengthLog > MLFSEv05Log) return ERROR(dictionary_corrupted);
    errorCode = FSEv05_buildDTable(dctx->MLTable, matchlengthNCount, matchlengthMaxValue, matchlengthLog);
    if (FSEv05_isError(errorCode)) return ERROR(dictionary_corrupted);
    dict = (const char*)dict + matchlengthHeaderSize;
    dictSize -= matchlengthHeaderSize;

    litlengthHeaderSize = FSEv05_readNCount(litlengthNCount, &litlengthMaxValue, &litlengthLog, dict, dictSize);
    if (litlengthLog > LLFSEv05Log) return ERROR(dictionary_corrupted);
    if (FSEv05_isError(litlengthHeaderSize)) return ERROR(dictionary_corrupted);
    errorCode = FSEv05_buildDTable(dctx->LLTable, litlengthNCount, litlengthMaxValue, litlengthLog);
    if (FSEv05_isError(errorCode)) return ERROR(dictionary_corrupted);

    dctx->flagStaticTables = 1;
    return hSize + offcodeHeaderSize + matchlengthHeaderSize + litlengthHeaderSize;
}
