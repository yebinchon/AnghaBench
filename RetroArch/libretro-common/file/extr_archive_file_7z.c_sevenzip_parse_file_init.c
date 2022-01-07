
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int s; int * realStream; } ;
struct TYPE_8__ {int s; int file; } ;
struct sevenzip_context_t {int allocTempImp; int allocImp; TYPE_3__ lookStream; int db; TYPE_5__ archiveStream; } ;
struct TYPE_6__ {scalar_t__ archive_size; struct sevenzip_context_t* stream; int data; } ;
typedef TYPE_1__ file_archive_transfer_t ;


 int CrcGenerateTable () ;
 int FileInStream_CreateVTable (TYPE_5__*) ;
 scalar_t__ InFile_Open (int *,char const*) ;
 scalar_t__ InFile_OpenW (int *,int *) ;
 int LookToRead_CreateVTable (TYPE_3__*,int) ;
 int LookToRead_Init (TYPE_3__*) ;
 int SEVENZIP_MAGIC ;
 scalar_t__ SEVENZIP_MAGIC_LEN ;
 scalar_t__ SZ_OK ;
 int SzArEx_Init (int *) ;
 scalar_t__ SzArEx_Open (int *,int *,int *,int *) ;
 int free (int *) ;
 int sevenzip_stream_free (struct sevenzip_context_t*) ;
 scalar_t__ sevenzip_stream_new () ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_not_equal_fast (int ,int ,scalar_t__) ;
 int * utf8_to_utf16_string_alloc (char const*) ;

__attribute__((used)) static int sevenzip_parse_file_init(file_archive_transfer_t *state,
      const char *file)
{
   struct sevenzip_context_t *sevenzip_context =
         (struct sevenzip_context_t*)sevenzip_stream_new();

   if (state->archive_size < SEVENZIP_MAGIC_LEN)
      goto error;

   if (string_is_not_equal_fast(state->data, SEVENZIP_MAGIC, SEVENZIP_MAGIC_LEN))
      goto error;

   state->stream = sevenzip_context;
   if (InFile_Open(&sevenzip_context->archiveStream.file, file))
      goto error;


   FileInStream_CreateVTable(&sevenzip_context->archiveStream);
   LookToRead_CreateVTable(&sevenzip_context->lookStream, 0);
   sevenzip_context->lookStream.realStream = &sevenzip_context->archiveStream.s;
   LookToRead_Init(&sevenzip_context->lookStream);
   CrcGenerateTable();
   SzArEx_Init(&sevenzip_context->db);

   if (SzArEx_Open(&sevenzip_context->db, &sevenzip_context->lookStream.s,
         &sevenzip_context->allocImp, &sevenzip_context->allocTempImp) != SZ_OK)
      goto error;

   return 0;

error:
   if (sevenzip_context)
      sevenzip_stream_free(sevenzip_context);
   return -1;
}
