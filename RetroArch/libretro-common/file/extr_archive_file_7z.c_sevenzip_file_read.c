
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int temp ;
typedef int infile ;
struct TYPE_28__ {int file; int s; } ;
struct TYPE_27__ {int s; int * realStream; } ;
struct TYPE_23__ {scalar_t__ NumFiles; TYPE_4__* Files; scalar_t__ NumFolders; scalar_t__ NumPackStreams; int * Folders; int * PackCRCs; int * PackCRCsDefined; int * PackSizes; } ;
struct TYPE_22__ {scalar_t__ size; int * data; } ;
struct TYPE_26__ {TYPE_2__ db; TYPE_1__ FileNames; int * FileNameOffsets; int * FileIndexToFolderIndexMap; int * FolderStartFileIndex; int * PackStreamStartPositions; int * FolderStartPackStreamIndex; scalar_t__ dataPos; scalar_t__ startPosAfterHeader; } ;
struct TYPE_25__ {scalar_t__ IsDir; } ;
struct TYPE_24__ {void* Free; int Alloc; } ;
typedef scalar_t__ SRes ;
typedef TYPE_3__ ISzAlloc ;
typedef TYPE_4__ CSzFileItem ;
typedef TYPE_5__ CSzArEx ;
typedef TYPE_6__ CLookToRead ;
typedef TYPE_7__ CFileInStream ;


 int CrcGenerateTable () ;
 int FileInStream_CreateVTable (TYPE_7__*) ;
 int File_Close (int *) ;
 int IAlloc_Free (TYPE_3__*,int *) ;
 scalar_t__ InFile_Open (int *,char const*) ;
 scalar_t__ InFile_OpenW (int *,int *) ;
 int LookToRead_CreateVTable (TYPE_6__*,int) ;
 int LookToRead_Init (TYPE_6__*) ;
 int PATH_MAX_LENGTH ;
 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_ERROR_MEM ;
 scalar_t__ SZ_OK ;
 scalar_t__ SzArEx_Extract (TYPE_5__*,int *,scalar_t__,scalar_t__*,int **,size_t*,size_t*,size_t*,TYPE_3__*,TYPE_3__*) ;
 int SzArEx_Free (TYPE_5__*,TYPE_3__*) ;
 size_t SzArEx_GetFileNameUtf16 (TYPE_5__*,scalar_t__,int *) ;
 int SzArEx_Init (TYPE_5__*) ;
 scalar_t__ SzArEx_Open (TYPE_5__*,int *,TYPE_3__*,TYPE_3__*) ;
 int filestream_write_file (char const*,void const*,long) ;
 int free (int *) ;
 void* malloc (long) ;
 int memcpy (void*,int *,long) ;
 int sevenzip_stream_alloc_impl ;
 int sevenzip_stream_alloc_tmp_impl ;
 void* sevenzip_stream_free_impl ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char*,char const*) ;
 scalar_t__ utf16_to_char_string (int *,char*,int) ;
 int * utf8_to_utf16_string_alloc (char const*) ;

__attribute__((used)) static int sevenzip_file_read(
      const char *path,
      const char *needle, void **buf,
      const char *optional_outfile)
{
   CFileInStream archiveStream;
   CLookToRead lookStream;
   ISzAlloc allocImp;
   ISzAlloc allocTempImp;
   CSzArEx db;
   uint8_t *output = 0;
   long outsize = -1;



   allocImp.Alloc = sevenzip_stream_alloc_impl;
   allocImp.Free = sevenzip_stream_free_impl;
   allocTempImp.Alloc = sevenzip_stream_alloc_tmp_impl;
   allocTempImp.Free = sevenzip_stream_free_impl;
   if (InFile_Open(&archiveStream.file, path))
      return -1;


   FileInStream_CreateVTable(&archiveStream);
   LookToRead_CreateVTable(&lookStream, 0);
   lookStream.realStream = &archiveStream.s;
   LookToRead_Init(&lookStream);
   CrcGenerateTable();

   db.db.PackSizes = ((void*)0);
   db.db.PackCRCsDefined = ((void*)0);
   db.db.PackCRCs = ((void*)0);
   db.db.Folders = ((void*)0);
   db.db.Files = ((void*)0);
   db.db.NumPackStreams = 0;
   db.db.NumFolders = 0;
   db.db.NumFiles = 0;
   db.startPosAfterHeader = 0;
   db.dataPos = 0;
   db.FolderStartPackStreamIndex = ((void*)0);
   db.PackStreamStartPositions = ((void*)0);
   db.FolderStartFileIndex = ((void*)0);
   db.FileIndexToFolderIndexMap = ((void*)0);
   db.FileNameOffsets = ((void*)0);
   db.FileNames.data = ((void*)0);
   db.FileNames.size = 0;

   SzArEx_Init(&db);

   if (SzArEx_Open(&db, &lookStream.s, &allocImp, &allocTempImp) == SZ_OK)
   {
      uint32_t i;
      bool file_found = 0;
      uint16_t *temp = ((void*)0);
      size_t temp_size = 0;
      uint32_t block_index = 0xFFFFFFFF;
      SRes res = SZ_OK;

      for (i = 0; i < db.db.NumFiles; i++)
      {
         size_t len;
         char infile[PATH_MAX_LENGTH];
         size_t offset = 0;
         size_t outSizeProcessed = 0;
         const CSzFileItem *f = db.db.Files + i;



         if (f->IsDir)
            continue;

         len = SzArEx_GetFileNameUtf16(&db, i, ((void*)0));

         if (len > temp_size)
         {
            if (temp)
               free(temp);
            temp_size = len;
            temp = (uint16_t *)malloc(temp_size * sizeof(temp[0]));

            if (temp == 0)
            {
               res = SZ_ERROR_MEM;
               break;
            }
         }

         SzArEx_GetFileNameUtf16(&db, i, temp);
         res = SZ_ERROR_FAIL;
         infile[0] = '\0';

         if (temp)
            res = utf16_to_char_string(temp, infile, sizeof(infile))
               ? SZ_OK : SZ_ERROR_FAIL;

         if (string_is_equal(infile, needle))
         {
            size_t output_size = 0;




            file_found = 1;
            res = SzArEx_Extract(&db, &lookStream.s, i, &block_index,
                  &output, &output_size, &offset, &outSizeProcessed,
                  &allocImp, &allocTempImp);

            if (res != SZ_OK)
               break;

            outsize = outSizeProcessed;

            if (optional_outfile != ((void*)0))
            {
               const void *ptr = (const void*)(output + offset);

               if (!filestream_write_file(optional_outfile, ptr, outsize))
               {
                  res = SZ_OK;
                  file_found = 1;
                  outsize = -1;
               }
            }
            else
            {





               *buf = malloc(outsize + 1);
               ((char*)(*buf))[outsize] = '\0';
               memcpy(*buf,output + offset,outsize);
            }
            break;
         }
      }

      if (temp)
         free(temp);
      IAlloc_Free(&allocImp, output);

      if (!(file_found && res == SZ_OK))
      {





         outsize = -1;
      }
   }

   SzArEx_Free(&db, &allocImp);
   File_Close(&archiveStream.file);

   return (int)outsize;
}
