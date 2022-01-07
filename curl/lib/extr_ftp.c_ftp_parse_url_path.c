
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftp_conn {char** dirs; int dirdepth; char const* file; char* prevpath; void* cwddone; void* cwdfail; void* ctl_valid; } ;
struct TYPE_7__ {scalar_t__ reuse; } ;
struct TYPE_6__ {struct ftp_conn ftpc; } ;
struct connectdata {TYPE_3__ bits; TYPE_2__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ transfer; int path; } ;
struct TYPE_8__ {int ftp_filemethod; scalar_t__ upload; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_4__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_URL_MALFORMAT ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,int ,int ,char**,size_t*,void*) ;
 int DEBUGASSERT (int) ;
 void* FALSE ;



 scalar_t__ FTPTRANSFER_BODY ;
 void* TRUE ;
 void* calloc (int,size_t) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 int infof (struct Curl_easy*,char*) ;
 char* strchr (char const*,char) ;
 char const* strdup (char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static
CURLcode ftp_parse_url_path(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;

  struct FTP *ftp = data->req.protop;
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  const char *slashPos = ((void*)0);
  const char *fileName = ((void*)0);
  CURLcode result = CURLE_OK;
  char *rawPath = ((void*)0);
  size_t pathLen = 0;

  ftpc->ctl_valid = FALSE;
  ftpc->cwdfail = FALSE;


  result = Curl_urldecode(data, ftp->path, 0, &rawPath, &pathLen, TRUE);
  if(result)
    return result;

  switch(data->set.ftp_filemethod) {
    case 129:

      if((pathLen > 0) && (rawPath[pathLen - 1] != '/'))
          fileName = rawPath;






      break;

    case 128:
      slashPos = strrchr(rawPath, '/');
      if(slashPos) {

        size_t dirlen = slashPos - rawPath;
        if(dirlen == 0)
            dirlen++;

        ftpc->dirs = calloc(1, sizeof(ftpc->dirs[0]));
        if(!ftpc->dirs) {
          free(rawPath);
          return CURLE_OUT_OF_MEMORY;
        }

        ftpc->dirs[0] = calloc(1, dirlen + 1);
        if(!ftpc->dirs[0]) {
          free(rawPath);
          return CURLE_OUT_OF_MEMORY;
        }

        strncpy(ftpc->dirs[0], rawPath, dirlen);
        ftpc->dirdepth = 1;
        fileName = slashPos + 1;
      }
      else
        fileName = rawPath;
      break;

    default:
    case 130: {

      const char *curPos = rawPath;

      int dirAlloc = 0;
      const char *str = rawPath;
      for(; *str != 0; ++str)
        if (*str == '/')
          ++dirAlloc;

      if(dirAlloc > 0) {
        ftpc->dirs = calloc(dirAlloc, sizeof(ftpc->dirs[0]));
        if(!ftpc->dirs) {
          free(rawPath);
          return CURLE_OUT_OF_MEMORY;
        }


        while((slashPos = strchr(curPos, '/')) != ((void*)0)) {
          size_t compLen = slashPos - curPos;


          if((compLen == 0) && (ftpc->dirdepth == 0))
            ++compLen;




          if(compLen > 0) {
            char *comp = calloc(1, compLen + 1);
            if(!comp) {
              free(rawPath);
              return CURLE_OUT_OF_MEMORY;
            }
            strncpy(comp, curPos, compLen);
            ftpc->dirs[ftpc->dirdepth++] = comp;
          }
          curPos = slashPos + 1;
        }
      }
      DEBUGASSERT(ftpc->dirdepth <= dirAlloc);
      fileName = curPos;
    }
    break;
  }

  if(fileName && *fileName)
    ftpc->file = strdup(fileName);
  else
    ftpc->file = ((void*)0);


  if(data->set.upload && !ftpc->file && (ftp->transfer == FTPTRANSFER_BODY)) {

    failf(data, "Uploading to a URL without a file name!");
    free(rawPath);
    return CURLE_URL_MALFORMAT;
  }

  ftpc->cwddone = FALSE;

  if((data->set.ftp_filemethod == 129) && (rawPath[0] == '/'))
    ftpc->cwddone = TRUE;
  else {
    const char *oldPath = conn->bits.reuse ? ftpc->prevpath : "";
    if(oldPath) {
      size_t n = pathLen;
      if(data->set.ftp_filemethod == 129)
        n = 0;
      else
        n -= ftpc->file?strlen(ftpc->file):0;

      if((strlen(oldPath) == n) && !strncmp(rawPath, oldPath, n)) {
        infof(data, "Request has same path as previous transfer\n");
        ftpc->cwddone = TRUE;
      }
    }
  }

  free(rawPath);
  return CURLE_OK;
}
