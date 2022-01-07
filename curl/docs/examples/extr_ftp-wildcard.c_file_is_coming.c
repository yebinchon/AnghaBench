
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_fileinfo {char* filename; int size; int filetype; } ;
struct callback_data {int output; } ;




 long CURL_CHUNK_BGN_FUNC_FAIL ;
 long CURL_CHUNK_BGN_FUNC_OK ;
 long CURL_CHUNK_BGN_FUNC_SKIP ;
 int fopen (char*,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static long file_is_coming(struct curl_fileinfo *finfo,
                           struct callback_data *data,
                           int remains)
{
  printf("%3d %40s %10luB ", remains, finfo->filename,
         (unsigned long)finfo->size);

  switch(finfo->filetype) {
  case 129:
    printf(" DIR\n");
    break;
  case 128:
    printf("FILE ");
    break;
  default:
    printf("OTHER\n");
    break;
  }

  if(finfo->filetype == 128) {

    if(finfo->size > 50) {
      printf("SKIPPED\n");
      return CURL_CHUNK_BGN_FUNC_SKIP;
    }

    data->output = fopen(finfo->filename, "wb");
    if(!data->output) {
      return CURL_CHUNK_BGN_FUNC_FAIL;
    }
  }

  return CURL_CHUNK_BGN_FUNC_OK;
}
