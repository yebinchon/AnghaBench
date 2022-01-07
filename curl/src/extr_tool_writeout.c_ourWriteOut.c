
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct OutStruct {char const* filename; } ;
struct TYPE_2__ {int id; scalar_t__ name; } ;
typedef int FILE ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLINFO_APPCONNECT_TIME ;
 int CURLINFO_CONNECT_TIME ;
 int CURLINFO_CONTENT_TYPE ;
 int CURLINFO_EFFECTIVE_URL ;
 int CURLINFO_FTP_ENTRY_PATH ;
 int CURLINFO_HEADER_SIZE ;
 int CURLINFO_HTTP_CONNECTCODE ;
 int CURLINFO_HTTP_VERSION ;
 int CURLINFO_LOCAL_IP ;
 int CURLINFO_LOCAL_PORT ;
 int CURLINFO_NAMELOOKUP_TIME ;
 int CURLINFO_NUM_CONNECTS ;
 int CURLINFO_PRETRANSFER_TIME ;
 int CURLINFO_PRIMARY_IP ;
 int CURLINFO_PRIMARY_PORT ;
 int CURLINFO_PROXY_SSL_VERIFYRESULT ;
 int CURLINFO_REDIRECT_COUNT ;
 int CURLINFO_REDIRECT_TIME ;
 int CURLINFO_REDIRECT_URL ;
 int CURLINFO_REQUEST_SIZE ;
 int CURLINFO_RESPONSE_CODE ;
 int CURLINFO_SCHEME ;
 int CURLINFO_SIZE_DOWNLOAD ;
 int CURLINFO_SIZE_UPLOAD ;
 int CURLINFO_SPEED_DOWNLOAD ;
 int CURLINFO_SPEED_UPLOAD ;
 int CURLINFO_SSL_VERIFYRESULT ;
 int CURLINFO_STARTTRANSFER_TIME ;
 int CURLINFO_TOTAL_TIME ;




 int FALSE ;
 int TRUE ;
 int curl_easy_getinfo (int *,int ,...) ;
 scalar_t__ curl_strequal (char const*,scalar_t__) ;
 int fprintf (int *,char const*,...) ;
 int fputc (char const,int *) ;
 int fputs (char*,int *) ;
 TYPE_1__* replacements ;
 int * stderr ;
 int * stdout ;
 char* strchr (char const*,char) ;

void ourWriteOut(CURL *curl, struct OutStruct *outs, const char *writeinfo)
{
  FILE *stream = stdout;
  const char *ptr = writeinfo;
  char *stringp = ((void*)0);
  long longinfo;
  double doubleinfo;

  while(ptr && *ptr) {
    if('%' == *ptr && ptr[1]) {
      if('%' == ptr[1]) {

        fputc('%', stream);
        ptr += 2;
      }
      else {

        char *end;
        if('{' == ptr[1]) {
          char keepit;
          int i;
          bool match = FALSE;
          end = strchr(ptr, '}');
          ptr += 2;
          if(!end) {
            fputs("%{", stream);
            continue;
          }
          keepit = *end;
          *end = 0;
          for(i = 0; replacements[i].name; i++) {
            if(curl_strequal(ptr, replacements[i].name)) {
              match = TRUE;
              switch(replacements[i].id) {
              case 155:
                if((CURLE_OK ==
                    curl_easy_getinfo(curl, CURLINFO_EFFECTIVE_URL, &stringp))
                   && stringp)
                  fputs(stringp, stream);
                break;
              case 152:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &longinfo))
                  fprintf(stream, "%03ld", longinfo);
                break;
              case 151:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_HTTP_CONNECTCODE,
                                     &longinfo))
                  fprintf(stream, "%03ld", longinfo);
                break;
              case 153:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_HEADER_SIZE, &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 138:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_REQUEST_SIZE, &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 146:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_NUM_CONNECTS, &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 141:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_REDIRECT_COUNT, &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 140:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_REDIRECT_TIME,
                                     &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 128:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_TOTAL_TIME, &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 147:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_NAMELOOKUP_TIME,
                                     &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 158:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_CONNECT_TIME, &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 159:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_APPCONNECT_TIME,
                                     &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 145:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_PRETRANSFER_TIME,
                                     &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 131:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_STARTTRANSFER_TIME,
                                     &doubleinfo))
                  fprintf(stream, "%.6f", doubleinfo);
                break;
              case 135:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SIZE_UPLOAD, &doubleinfo))
                  fprintf(stream, "%.0f", doubleinfo);
                break;
              case 136:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SIZE_DOWNLOAD,
                                     &doubleinfo))
                  fprintf(stream, "%.0f", doubleinfo);
                break;
              case 134:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SPEED_DOWNLOAD,
                                     &doubleinfo))
                  fprintf(stream, "%.3f", doubleinfo);
                break;
              case 133:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SPEED_UPLOAD, &doubleinfo))
                  fprintf(stream, "%.3f", doubleinfo);
                break;
              case 157:
                if((CURLE_OK ==
                    curl_easy_getinfo(curl, CURLINFO_CONTENT_TYPE, &stringp))
                   && stringp)
                  fputs(stringp, stream);
                break;
              case 154:
                if((CURLE_OK ==
                    curl_easy_getinfo(curl, CURLINFO_FTP_ENTRY_PATH, &stringp))
                   && stringp)
                  fputs(stringp, stream);
                break;
              case 139:
                if((CURLE_OK ==
                    curl_easy_getinfo(curl, CURLINFO_REDIRECT_URL, &stringp))
                   && stringp)
                  fputs(stringp, stream);
                break;
              case 132:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SSL_VERIFYRESULT,
                                     &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 142:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_PROXY_SSL_VERIFYRESULT,
                                     &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 156:
                if(outs->filename)
                  fprintf(stream, "%s", outs->filename);
                break;
              case 144:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_PRIMARY_IP,
                                     &stringp))
                  fprintf(stream, "%s", stringp);
                break;
              case 143:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_PRIMARY_PORT,
                                     &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 149:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_LOCAL_IP,
                                     &stringp))
                  fprintf(stream, "%s", stringp);
                break;
              case 148:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_LOCAL_PORT,
                                     &longinfo))
                  fprintf(stream, "%ld", longinfo);
                break;
              case 150:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_HTTP_VERSION,
                                     &longinfo)) {
                  const char *version = "0";
                  switch(longinfo) {
                  case 163:
                    version = "1.0";
                    break;
                  case 162:
                    version = "1.1";
                    break;
                  case 161:
                    version = "2";
                    break;
                  case 160:
                    version = "3";
                    break;
                  }

                  fprintf(stream, version);
                }
                break;
              case 137:
                if(CURLE_OK ==
                   curl_easy_getinfo(curl, CURLINFO_SCHEME,
                                     &stringp))
                  fprintf(stream, "%s", stringp);
                break;
              case 129:
                stream = stdout;
                break;
              case 130:
                stream = stderr;
                break;
              default:
                break;
              }
              break;
            }
          }
          if(!match) {
            fprintf(stderr, "curl: unknown --write-out variable: '%s'\n", ptr);
          }
          ptr = end + 1;
          *end = keepit;
        }
        else {

          fputc('%', stream);
          fputc(ptr[1], stream);
          ptr += 2;
        }
      }
    }
    else if('\\' == *ptr && ptr[1]) {
      switch(ptr[1]) {
      case 'r':
        fputc('\r', stream);
        break;
      case 'n':
        fputc('\n', stream);
        break;
      case 't':
        fputc('\t', stream);
        break;
      default:

        fputc(*ptr, stream);
        fputc(ptr[1], stream);
        break;
      }
      ptr += 2;
    }
    else {
      fputc(*ptr, stream);
      ptr++;
    }
  }

}
