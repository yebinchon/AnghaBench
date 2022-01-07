
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct FILEPROTO {char* path; char* freepath; int fd; } ;
struct TYPE_7__ {int path; } ;
struct TYPE_8__ {TYPE_3__ up; } ;
struct TYPE_6__ {int upload; } ;
struct TYPE_5__ {struct FILEPROTO* protop; } ;
struct Curl_easy {TYPE_4__ state; TYPE_2__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_FILE_COULDNT_READ_FILE ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_URL_MALFORMAT ;
 int Curl_safefree (char*) ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,int ,int ,char**,size_t*,int ) ;
 int FALSE ;
 int O_BINARY ;
 int O_RDONLY ;
 int TRUE ;
 int failf (struct Curl_easy*,char*,int ) ;
 int file_done (struct connectdata*,scalar_t__,int ) ;
 scalar_t__ memchr (char*,int ,size_t) ;
 int open_readonly (char*,int) ;

__attribute__((used)) static CURLcode file_connect(struct connectdata *conn, bool *done)
{
  struct Curl_easy *data = conn->data;
  char *real_path;
  struct FILEPROTO *file = data->req.protop;
  int fd;




  size_t real_path_len;

  CURLcode result = Curl_urldecode(data, data->state.up.path, 0, &real_path,
                                   &real_path_len, FALSE);
  if(result)
    return result;
  if(memchr(real_path, 0, real_path_len)) {

    Curl_safefree(real_path);
    return CURLE_URL_MALFORMAT;
  }

  fd = open_readonly(real_path, O_RDONLY);
  file->path = real_path;

  file->freepath = real_path;

  file->fd = fd;
  if(!data->set.upload && (fd == -1)) {
    failf(data, "Couldn't open file %s", data->state.up.path);
    file_done(conn, CURLE_FILE_COULDNT_READ_FILE, FALSE);
    return CURLE_FILE_COULDNT_READ_FILE;
  }
  *done = TRUE;

  return CURLE_OK;
}
