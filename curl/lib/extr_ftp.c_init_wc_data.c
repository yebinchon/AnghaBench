
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct connectdata* file_descriptor; int write_function; } ;
struct ftp_wc {int parser; TYPE_2__ backup; } ;
struct connectdata {TYPE_4__* data; } ;
struct WildcardData {struct ftp_wc* protdata; int dtor; void* pattern; void* path; void* state; } ;
struct FTP {char* path; } ;
struct TYPE_7__ {scalar_t__ ftp_filemethod; struct connectdata* out; int fwrite_func; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct TYPE_8__ {TYPE_3__ set; struct WildcardData wildcard; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 void* CURLWC_CLEAN ;
 int Curl_ftp_parselist ;
 int Curl_ftp_parselist_data_alloc () ;
 int Curl_ftp_parselist_data_free (int *) ;
 int Curl_safefree (void*) ;
 scalar_t__ FTPFILE_MULTICWD ;
 scalar_t__ FTPFILE_NOCWD ;
 int ZERO_NULL ;
 struct ftp_wc* calloc (int,int) ;
 int free (struct ftp_wc*) ;
 scalar_t__ ftp_parse_url_path (struct connectdata*) ;
 int infof (TYPE_4__*,char*) ;
 void* strdup (char*) ;
 char* strrchr (char*,char) ;
 int wc_data_dtor ;

__attribute__((used)) static CURLcode init_wc_data(struct connectdata *conn)
{
  char *last_slash;
  struct FTP *ftp = conn->data->req.protop;
  char *path = ftp->path;
  struct WildcardData *wildcard = &(conn->data->wildcard);
  CURLcode result = CURLE_OK;
  struct ftp_wc *ftpwc = ((void*)0);

  last_slash = strrchr(ftp->path, '/');
  if(last_slash) {
    last_slash++;
    if(last_slash[0] == '\0') {
      wildcard->state = CURLWC_CLEAN;
      result = ftp_parse_url_path(conn);
      return result;
    }
    wildcard->pattern = strdup(last_slash);
    if(!wildcard->pattern)
      return CURLE_OUT_OF_MEMORY;
    last_slash[0] = '\0';
  }
  else {
    if(path[0]) {
      wildcard->pattern = strdup(path);
      if(!wildcard->pattern)
        return CURLE_OUT_OF_MEMORY;
      path[0] = '\0';
    }
    else {
      wildcard->state = CURLWC_CLEAN;
      result = ftp_parse_url_path(conn);
      return result;
    }
  }





  ftpwc = calloc(1, sizeof(struct ftp_wc));
  if(!ftpwc) {
    result = CURLE_OUT_OF_MEMORY;
    goto fail;
  }


  ftpwc->parser = Curl_ftp_parselist_data_alloc();
  if(!ftpwc->parser) {
    result = CURLE_OUT_OF_MEMORY;
    goto fail;
  }

  wildcard->protdata = ftpwc;
  wildcard->dtor = wc_data_dtor;


  if(conn->data->set.ftp_filemethod == FTPFILE_NOCWD)
    conn->data->set.ftp_filemethod = FTPFILE_MULTICWD;


  result = ftp_parse_url_path(conn);
  if(result) {
    goto fail;
  }

  wildcard->path = strdup(ftp->path);
  if(!wildcard->path) {
    result = CURLE_OUT_OF_MEMORY;
    goto fail;
  }


  ftpwc->backup.write_function = conn->data->set.fwrite_func;

  conn->data->set.fwrite_func = Curl_ftp_parselist;

  ftpwc->backup.file_descriptor = conn->data->set.out;

  conn->data->set.out = conn;

  infof(conn->data, "Wildcard - Parsing started\n");
  return CURLE_OK;

  fail:
  if(ftpwc) {
    Curl_ftp_parselist_data_free(&ftpwc->parser);
    free(ftpwc);
  }
  Curl_safefree(wildcard->pattern);
  wildcard->dtor = ZERO_NULL;
  wildcard->protdata = ((void*)0);
  return result;
}
