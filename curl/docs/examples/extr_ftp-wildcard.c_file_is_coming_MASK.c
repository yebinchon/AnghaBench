#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct curl_fileinfo {char* filename; int size; int filetype; } ;
struct callback_data {int /*<<< orphan*/  output; } ;

/* Variables and functions */
#define  CURLFILETYPE_DIRECTORY 129 
#define  CURLFILETYPE_FILE 128 
 long CURL_CHUNK_BGN_FUNC_FAIL ; 
 long CURL_CHUNK_BGN_FUNC_OK ; 
 long CURL_CHUNK_BGN_FUNC_SKIP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static long FUNC2(struct curl_fileinfo *finfo,
                           struct callback_data *data,
                           int remains)
{
  FUNC1("%3d %40s %10luB ", remains, finfo->filename,
         (unsigned long)finfo->size);

  switch(finfo->filetype) {
  case CURLFILETYPE_DIRECTORY:
    FUNC1(" DIR\n");
    break;
  case CURLFILETYPE_FILE:
    FUNC1("FILE ");
    break;
  default:
    FUNC1("OTHER\n");
    break;
  }

  if(finfo->filetype == CURLFILETYPE_FILE) {
    /* do not transfer files >= 50B */
    if(finfo->size > 50) {
      FUNC1("SKIPPED\n");
      return CURL_CHUNK_BGN_FUNC_SKIP;
    }

    data->output = FUNC0(finfo->filename, "wb");
    if(!data->output) {
      return CURL_CHUNK_BGN_FUNC_FAIL;
    }
  }

  return CURL_CHUNK_BGN_FUNC_OK;
}