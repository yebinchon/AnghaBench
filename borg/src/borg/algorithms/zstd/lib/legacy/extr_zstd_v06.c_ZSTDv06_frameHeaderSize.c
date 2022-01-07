
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t* ZSTDv06_fcs_fieldSize ;
 size_t ZSTDv06_frameHeaderSize_min ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTDv06_frameHeaderSize(const void* src, size_t srcSize)
{
    if (srcSize < ZSTDv06_frameHeaderSize_min) return ERROR(srcSize_wrong);
    { U32 const fcsId = (((const BYTE*)src)[4]) >> 6;
      return ZSTDv06_frameHeaderSize_min + ZSTDv06_fcs_fieldSize[fcsId]; }
}
