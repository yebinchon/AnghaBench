#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * file_descriptor; int /*<<< orphan*/  write_function; } ;
struct ftp_wc {int /*<<< orphan*/  parser; TYPE_1__ backup; } ;
struct ftp_conn {int /*<<< orphan*/  known_filesize; } ;
struct curl_fileinfo {int flags; int /*<<< orphan*/  size; int /*<<< orphan*/  filetype; int /*<<< orphan*/  filename; } ;
struct TYPE_10__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_5__* data; TYPE_2__ proto; } ;
struct TYPE_14__ {scalar_t__ size; TYPE_8__* head; } ;
struct WildcardData {int state; struct ftp_wc* protdata; int /*<<< orphan*/  (* dtor ) (struct ftp_wc*) ;TYPE_7__ filelist; int /*<<< orphan*/  customptr; int /*<<< orphan*/  path; } ;
struct FTP {char* pathalloc; char* path; } ;
struct TYPE_15__ {struct curl_fileinfo* ptr; } ;
struct TYPE_12__ {long (* chunk_bgn ) (struct curl_fileinfo*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* chunk_end ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * out; int /*<<< orphan*/  fwrite_func; } ;
struct TYPE_11__ {struct FTP* protop; } ;
struct TYPE_13__ {struct WildcardData wildcard; TYPE_4__ set; TYPE_3__ req; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_CHUNK_FAILED ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_REMOTE_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  CURLFILETYPE_FILE ; 
 int CURLFINFOFLAG_KNOWN_SIZE ; 
#define  CURLWC_CLEAN 137 
#define  CURLWC_CLEAR 136 
#define  CURLWC_DONE 135 
#define  CURLWC_DOWNLOADING 134 
#define  CURLWC_ERROR 133 
#define  CURLWC_INIT 132 
#define  CURLWC_MATCHING 131 
#define  CURLWC_SKIP 130 
#define  CURL_CHUNK_BGN_FUNC_FAIL 129 
#define  CURL_CHUNK_BGN_FUNC_SKIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  ZERO_NULL ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct connectdata*) ; 
 long FUNC8 (struct curl_fileinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ftp_wc*) ; 

__attribute__((used)) static CURLcode FUNC11(struct connectdata *conn)
{
  struct WildcardData * const wildcard = &(conn->data->wildcard);
  CURLcode result = CURLE_OK;

  switch(wildcard->state) {
  case CURLWC_INIT:
    result = FUNC7(conn);
    if(wildcard->state == CURLWC_CLEAN)
      /* only listing! */
      break;
    wildcard->state = result ? CURLWC_ERROR : CURLWC_MATCHING;
    break;

  case CURLWC_MATCHING: {
    /* In this state is LIST response successfully parsed, so lets restore
       previous WRITEFUNCTION callback and WRITEDATA pointer */
    struct ftp_wc *ftpwc = wildcard->protdata;
    conn->data->set.fwrite_func = ftpwc->backup.write_function;
    conn->data->set.out = ftpwc->backup.file_descriptor;
    ftpwc->backup.write_function = ZERO_NULL;
    ftpwc->backup.file_descriptor = NULL;
    wildcard->state = CURLWC_DOWNLOADING;

    if(FUNC0(ftpwc->parser)) {
      /* error found in LIST parsing */
      wildcard->state = CURLWC_CLEAN;
      return FUNC11(conn);
    }
    if(wildcard->filelist.size == 0) {
      /* no corresponding file */
      wildcard->state = CURLWC_CLEAN;
      return CURLE_REMOTE_FILE_NOT_FOUND;
    }
    return FUNC11(conn);
  }

  case CURLWC_DOWNLOADING: {
    /* filelist has at least one file, lets get first one */
    struct ftp_conn *ftpc = &conn->proto.ftpc;
    struct curl_fileinfo *finfo = wildcard->filelist.head->ptr;
    struct FTP *ftp = conn->data->req.protop;

    char *tmp_path = FUNC3("%s%s", wildcard->path, finfo->filename);
    if(!tmp_path)
      return CURLE_OUT_OF_MEMORY;

    /* switch default ftp->path and tmp_path */
    FUNC4(ftp->pathalloc);
    ftp->pathalloc = ftp->path = tmp_path;

    FUNC6(conn->data, "Wildcard - START of \"%s\"\n", finfo->filename);
    if(conn->data->set.chunk_bgn) {
      long userresponse;
      FUNC2(conn->data, true);
      userresponse = conn->data->set.chunk_bgn(
        finfo, wildcard->customptr, (int)wildcard->filelist.size);
      FUNC2(conn->data, false);
      switch(userresponse) {
      case CURL_CHUNK_BGN_FUNC_SKIP:
        FUNC6(conn->data, "Wildcard - \"%s\" skipped by user\n",
              finfo->filename);
        wildcard->state = CURLWC_SKIP;
        return FUNC11(conn);
      case CURL_CHUNK_BGN_FUNC_FAIL:
        return CURLE_CHUNK_FAILED;
      }
    }

    if(finfo->filetype != CURLFILETYPE_FILE) {
      wildcard->state = CURLWC_SKIP;
      return FUNC11(conn);
    }

    if(finfo->flags & CURLFINFOFLAG_KNOWN_SIZE)
      ftpc->known_filesize = finfo->size;

    result = FUNC5(conn);
    if(result)
      return result;

    /* we don't need the Curl_fileinfo of first file anymore */
    FUNC1(&wildcard->filelist, wildcard->filelist.head, NULL);

    if(wildcard->filelist.size == 0) { /* remains only one file to down. */
      wildcard->state = CURLWC_CLEAN;
      /* after that will be ftp_do called once again and no transfer
         will be done because of CURLWC_CLEAN state */
      return CURLE_OK;
    }
  } break;

  case CURLWC_SKIP: {
    if(conn->data->set.chunk_end) {
      FUNC2(conn->data, true);
      conn->data->set.chunk_end(conn->data->wildcard.customptr);
      FUNC2(conn->data, false);
    }
    FUNC1(&wildcard->filelist, wildcard->filelist.head, NULL);
    wildcard->state = (wildcard->filelist.size == 0) ?
                      CURLWC_CLEAN : CURLWC_DOWNLOADING;
    return FUNC11(conn);
  }

  case CURLWC_CLEAN: {
    struct ftp_wc *ftpwc = wildcard->protdata;
    result = CURLE_OK;
    if(ftpwc)
      result = FUNC0(ftpwc->parser);

    wildcard->state = result ? CURLWC_ERROR : CURLWC_DONE;
  } break;

  case CURLWC_DONE:
  case CURLWC_ERROR:
  case CURLWC_CLEAR:
    if(wildcard->dtor)
      wildcard->dtor(wildcard->protdata);
    break;
  }

  return result;
}