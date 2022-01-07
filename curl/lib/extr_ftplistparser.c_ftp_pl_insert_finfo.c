
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_wc {struct ftp_parselist_data* parser; } ;
struct TYPE_5__ {int filename; int group; int perm; int symlink_target; int time; int user; } ;
struct ftp_parselist_data {int * file_data; TYPE_1__ offsets; } ;
struct TYPE_7__ {char* group; char* perm; char* target; char* time; char* user; } ;
struct curl_fileinfo {char* b_data; char* filename; scalar_t__ filetype; TYPE_3__ strings; } ;
struct fileinfo {int list; struct curl_fileinfo info; } ;
struct curl_llist {int tail; } ;
struct connectdata {TYPE_4__* data; } ;
struct WildcardData {int pattern; struct curl_llist filelist; struct ftp_wc* protdata; } ;
typedef scalar_t__ (* curl_fnmatch_callback ) (int ,int ,char*) ;
struct TYPE_6__ {scalar_t__ (* fnmatch ) (int ,int ,char*) ;int fnmatch_data; } ;
struct TYPE_8__ {TYPE_2__ set; struct WildcardData wildcard; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 scalar_t__ CURLFILETYPE_SYMLINK ;
 int Curl_fileinfo_cleanup (struct fileinfo*) ;
 scalar_t__ Curl_fnmatch (int ,int ,char*) ;
 int Curl_llist_insert_next (struct curl_llist*,int ,struct curl_fileinfo*,int *) ;
 int Curl_set_in_callback (TYPE_4__*,int) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static CURLcode ftp_pl_insert_finfo(struct connectdata *conn,
                                    struct fileinfo *infop)
{
  curl_fnmatch_callback compare;
  struct WildcardData *wc = &conn->data->wildcard;
  struct ftp_wc *ftpwc = wc->protdata;
  struct curl_llist *llist = &wc->filelist;
  struct ftp_parselist_data *parser = ftpwc->parser;
  bool add = TRUE;
  struct curl_fileinfo *finfo = &infop->info;


  char *str = finfo->b_data;
  finfo->filename = str + parser->offsets.filename;
  finfo->strings.group = parser->offsets.group ?
                          str + parser->offsets.group : ((void*)0);
  finfo->strings.perm = parser->offsets.perm ?
                          str + parser->offsets.perm : ((void*)0);
  finfo->strings.target = parser->offsets.symlink_target ?
                          str + parser->offsets.symlink_target : ((void*)0);
  finfo->strings.time = str + parser->offsets.time;
  finfo->strings.user = parser->offsets.user ?
                          str + parser->offsets.user : ((void*)0);


  compare = conn->data->set.fnmatch;
  if(!compare)
    compare = Curl_fnmatch;


  Curl_set_in_callback(conn->data, 1);
  if(compare(conn->data->set.fnmatch_data, wc->pattern,
             finfo->filename) == 0) {

    if((finfo->filetype == CURLFILETYPE_SYMLINK) && finfo->strings.target &&
       (strstr(finfo->strings.target, " -> "))) {
      add = FALSE;
    }
  }
  else {
    add = FALSE;
  }
  Curl_set_in_callback(conn->data, 0);

  if(add) {
    Curl_llist_insert_next(llist, llist->tail, finfo, &infop->list);
  }
  else {
    Curl_fileinfo_cleanup(infop);
  }

  ftpwc->parser->file_data = ((void*)0);
  return CURLE_OK;
}
