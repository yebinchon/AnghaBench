
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct OutStruct {int bytes; scalar_t__ stream; scalar_t__ init; scalar_t__ is_cd_filename; scalar_t__ alloc_filename; scalar_t__ fopened; scalar_t__ s_isreg; int * filename; struct OperationConfig* config; } ;
struct per_transfer {int curl; struct OutStruct outs; } ;
struct OperationConfig {int readbusy; scalar_t__ nobuffer; int synthetic_error; TYPE_1__* global; int terminal_binary_ok; scalar_t__ show_headers; } ;
struct TYPE_2__ {int isatty; } ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CONSOLE_SCREEN_BUFFER_INFO ;


 int CP_UTF8 ;
 int CURLPAUSE_CONT ;
 scalar_t__ CURL_MAX_HTTP_HEADER ;
 scalar_t__ CURL_MAX_WRITE_SIZE ;
 int ERR_BINARY_TERMINAL ;
 void* FALSE ;
 scalar_t__ GetConsoleScreenBufferInfo (int ,int *) ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int TRUE ;
 int WriteConsoleW (int ,int *,int,int*,int *) ;
 intptr_t _get_osfhandle (int ) ;
 int curl_easy_pause (int ,int ) ;
 int curl_free (char*) ;
 char* curlx_getenv (char*) ;
 int fflush (scalar_t__) ;
 int fileno (scalar_t__) ;
 int free (int *) ;
 size_t fwrite (char*,size_t,size_t,scalar_t__) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memchr (char*,int ,size_t) ;
 int tool_create_output_file (struct OutStruct*) ;
 int warnf (TYPE_1__*,char*) ;

size_t tool_write_cb(char *buffer, size_t sz, size_t nmemb, void *userdata)
{
  size_t rc;
  struct per_transfer *per = userdata;
  struct OutStruct *outs = &per->outs;
  struct OperationConfig *config = outs->config;
  size_t bytes = sz * nmemb;
  bool is_tty = config->global->isatty;
  const size_t failure = bytes ? 0 : 1;
  if(!outs->stream && !tool_create_output_file(outs))
    return failure;

  if(is_tty && (outs->bytes < 2000) && !config->terminal_binary_ok) {

    if(memchr(buffer, 0, bytes)) {
      warnf(config->global, "Binary output can mess up your terminal. "
            "Use \"--output -\" to tell curl to output it to your terminal "
            "anyway, or consider \"--output <FILE>\" to save to a file.\n");
      config->synthetic_error = ERR_BINARY_TERMINAL;
      return failure;
    }
  }
    rc = fwrite(buffer, sz, nmemb, outs->stream);

  if(bytes == rc)

    outs->bytes += bytes;

  if(config->readbusy) {
    config->readbusy = FALSE;
    curl_easy_pause(per->curl, CURLPAUSE_CONT);
  }

  if(config->nobuffer) {

    int res = fflush(outs->stream);
    if(res)
      return failure;
  }

  return rc;
}
