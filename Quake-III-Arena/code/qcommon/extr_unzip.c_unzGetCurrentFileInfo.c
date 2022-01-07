
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unz_file_info ;
typedef int unzFile ;
typedef int uLong ;


 int unzlocal_GetCurrentFileInfoInternal (int ,int *,int *,char*,int ,void*,int ,char*,int ) ;

extern int unzGetCurrentFileInfo ( unzFile file, unz_file_info *pfile_info,
         char *szFileName, uLong fileNameBufferSize,
         void *extraField, uLong extraFieldBufferSize,
         char *szComment, uLong commentBufferSize)
{
 return unzlocal_GetCurrentFileInfoInternal(file,pfile_info,((void*)0),
            szFileName,fileNameBufferSize,
            extraField,extraFieldBufferSize,
            szComment,commentBufferSize);
}
