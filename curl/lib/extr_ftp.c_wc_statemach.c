
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * file_descriptor; int write_function; } ;
struct ftp_wc {int parser; TYPE_1__ backup; } ;
struct ftp_conn {int known_filesize; } ;
struct curl_fileinfo {int flags; int size; int filetype; int filename; } ;
struct TYPE_10__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_5__* data; TYPE_2__ proto; } ;
struct TYPE_14__ {scalar_t__ size; TYPE_8__* head; } ;
struct WildcardData {int state; struct ftp_wc* protdata; int (* dtor ) (struct ftp_wc*) ;TYPE_7__ filelist; int customptr; int path; } ;
struct FTP {char* pathalloc; char* path; } ;
struct TYPE_15__ {struct curl_fileinfo* ptr; } ;
struct TYPE_12__ {long (* chunk_bgn ) (struct curl_fileinfo*,int ,int) ;int (* chunk_end ) (int ) ;int * out; int fwrite_func; } ;
struct TYPE_11__ {struct FTP* protop; } ;
struct TYPE_13__ {struct WildcardData wildcard; TYPE_4__ set; TYPE_3__ req; } ;
typedef int CURLcode ;


 int CURLE_CHUNK_FAILED ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_REMOTE_FILE_NOT_FOUND ;
 int CURLFILETYPE_FILE ;
 int CURLFINFOFLAG_KNOWN_SIZE ;
 int Curl_ftp_parselist_geterror (int ) ;
 int Curl_llist_remove (TYPE_7__*,TYPE_8__*,int *) ;
 int Curl_set_in_callback (TYPE_5__*,int) ;
 int ZERO_NULL ;
 char* aprintf (char*,int ,int ) ;
 int free (char*) ;
 int ftp_parse_url_path (struct connectdata*) ;
 int infof (TYPE_5__*,char*,int ) ;
 int init_wc_data (struct connectdata*) ;
 long stub1 (struct curl_fileinfo*,int ,int) ;
 int stub2 (int ) ;
 int stub3 (struct ftp_wc*) ;

__attribute__((used)) static CURLcode wc_statemach(struct connectdata *conn)
{
  struct WildcardData * const wildcard = &(conn->data->wildcard);
  CURLcode result = CURLE_OK;

  switch(wildcard->state) {
  case 132:
    result = init_wc_data(conn);
    if(wildcard->state == 137)

      break;
    wildcard->state = result ? 133 : 131;
    break;

  case 131: {


    struct ftp_wc *ftpwc = wildcard->protdata;
    conn->data->set.fwrite_func = ftpwc->backup.write_function;
    conn->data->set.out = ftpwc->backup.file_descriptor;
    ftpwc->backup.write_function = ZERO_NULL;
    ftpwc->backup.file_descriptor = ((void*)0);
    wildcard->state = 134;

    if(Curl_ftp_parselist_geterror(ftpwc->parser)) {

      wildcard->state = 137;
      return wc_statemach(conn);
    }
    if(wildcard->filelist.size == 0) {

      wildcard->state = 137;
      return CURLE_REMOTE_FILE_NOT_FOUND;
    }
    return wc_statemach(conn);
  }

  case 134: {

    struct ftp_conn *ftpc = &conn->proto.ftpc;
    struct curl_fileinfo *finfo = wildcard->filelist.head->ptr;
    struct FTP *ftp = conn->data->req.protop;

    char *tmp_path = aprintf("%s%s", wildcard->path, finfo->filename);
    if(!tmp_path)
      return CURLE_OUT_OF_MEMORY;


    free(ftp->pathalloc);
    ftp->pathalloc = ftp->path = tmp_path;

    infof(conn->data, "Wildcard - START of \"%s\"\n", finfo->filename);
    if(conn->data->set.chunk_bgn) {
      long userresponse;
      Curl_set_in_callback(conn->data, 1);
      userresponse = conn->data->set.chunk_bgn(
        finfo, wildcard->customptr, (int)wildcard->filelist.size);
      Curl_set_in_callback(conn->data, 0);
      switch(userresponse) {
      case 128:
        infof(conn->data, "Wildcard - \"%s\" skipped by user\n",
              finfo->filename);
        wildcard->state = 130;
        return wc_statemach(conn);
      case 129:
        return CURLE_CHUNK_FAILED;
      }
    }

    if(finfo->filetype != CURLFILETYPE_FILE) {
      wildcard->state = 130;
      return wc_statemach(conn);
    }

    if(finfo->flags & CURLFINFOFLAG_KNOWN_SIZE)
      ftpc->known_filesize = finfo->size;

    result = ftp_parse_url_path(conn);
    if(result)
      return result;


    Curl_llist_remove(&wildcard->filelist, wildcard->filelist.head, ((void*)0));

    if(wildcard->filelist.size == 0) {
      wildcard->state = 137;


      return CURLE_OK;
    }
  } break;

  case 130: {
    if(conn->data->set.chunk_end) {
      Curl_set_in_callback(conn->data, 1);
      conn->data->set.chunk_end(conn->data->wildcard.customptr);
      Curl_set_in_callback(conn->data, 0);
    }
    Curl_llist_remove(&wildcard->filelist, wildcard->filelist.head, ((void*)0));
    wildcard->state = (wildcard->filelist.size == 0) ?
                      137 : 134;
    return wc_statemach(conn);
  }

  case 137: {
    struct ftp_wc *ftpwc = wildcard->protdata;
    result = CURLE_OK;
    if(ftpwc)
      result = Curl_ftp_parselist_geterror(ftpwc->parser);

    wildcard->state = result ? 133 : 135;
  } break;

  case 135:
  case 133:
  case 136:
    if(wildcard->dtor)
      wildcard->dtor(wildcard->protdata);
    break;
  }

  return result;
}
