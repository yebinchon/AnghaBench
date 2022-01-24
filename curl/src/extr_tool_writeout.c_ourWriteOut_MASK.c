#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct OutStruct {char const* filename; } ;
struct TYPE_2__ {int id; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLINFO_APPCONNECT_TIME ; 
 int /*<<< orphan*/  CURLINFO_CONNECT_TIME ; 
 int /*<<< orphan*/  CURLINFO_CONTENT_TYPE ; 
 int /*<<< orphan*/  CURLINFO_EFFECTIVE_URL ; 
 int /*<<< orphan*/  CURLINFO_FTP_ENTRY_PATH ; 
 int /*<<< orphan*/  CURLINFO_HEADER_SIZE ; 
 int /*<<< orphan*/  CURLINFO_HTTP_CONNECTCODE ; 
 int /*<<< orphan*/  CURLINFO_HTTP_VERSION ; 
 int /*<<< orphan*/  CURLINFO_LOCAL_IP ; 
 int /*<<< orphan*/  CURLINFO_LOCAL_PORT ; 
 int /*<<< orphan*/  CURLINFO_NAMELOOKUP_TIME ; 
 int /*<<< orphan*/  CURLINFO_NUM_CONNECTS ; 
 int /*<<< orphan*/  CURLINFO_PRETRANSFER_TIME ; 
 int /*<<< orphan*/  CURLINFO_PRIMARY_IP ; 
 int /*<<< orphan*/  CURLINFO_PRIMARY_PORT ; 
 int /*<<< orphan*/  CURLINFO_PROXY_SSL_VERIFYRESULT ; 
 int /*<<< orphan*/  CURLINFO_REDIRECT_COUNT ; 
 int /*<<< orphan*/  CURLINFO_REDIRECT_TIME ; 
 int /*<<< orphan*/  CURLINFO_REDIRECT_URL ; 
 int /*<<< orphan*/  CURLINFO_REQUEST_SIZE ; 
 int /*<<< orphan*/  CURLINFO_RESPONSE_CODE ; 
 int /*<<< orphan*/  CURLINFO_SCHEME ; 
 int /*<<< orphan*/  CURLINFO_SIZE_DOWNLOAD ; 
 int /*<<< orphan*/  CURLINFO_SIZE_UPLOAD ; 
 int /*<<< orphan*/  CURLINFO_SPEED_DOWNLOAD ; 
 int /*<<< orphan*/  CURLINFO_SPEED_UPLOAD ; 
 int /*<<< orphan*/  CURLINFO_SSL_VERIFYRESULT ; 
 int /*<<< orphan*/  CURLINFO_STARTTRANSFER_TIME ; 
 int /*<<< orphan*/  CURLINFO_TOTAL_TIME ; 
#define  CURL_HTTP_VERSION_1_0 163 
#define  CURL_HTTP_VERSION_1_1 162 
#define  CURL_HTTP_VERSION_2_0 161 
#define  CURL_HTTP_VERSION_3 160 
 int FALSE ; 
 int TRUE ; 
#define  VAR_APPCONNECT_TIME 159 
#define  VAR_CONNECT_TIME 158 
#define  VAR_CONTENT_TYPE 157 
#define  VAR_EFFECTIVE_FILENAME 156 
#define  VAR_EFFECTIVE_URL 155 
#define  VAR_FTP_ENTRY_PATH 154 
#define  VAR_HEADER_SIZE 153 
#define  VAR_HTTP_CODE 152 
#define  VAR_HTTP_CODE_PROXY 151 
#define  VAR_HTTP_VERSION 150 
#define  VAR_LOCAL_IP 149 
#define  VAR_LOCAL_PORT 148 
#define  VAR_NAMELOOKUP_TIME 147 
#define  VAR_NUM_CONNECTS 146 
#define  VAR_PRETRANSFER_TIME 145 
#define  VAR_PRIMARY_IP 144 
#define  VAR_PRIMARY_PORT 143 
#define  VAR_PROXY_SSL_VERIFY_RESULT 142 
#define  VAR_REDIRECT_COUNT 141 
#define  VAR_REDIRECT_TIME 140 
#define  VAR_REDIRECT_URL 139 
#define  VAR_REQUEST_SIZE 138 
#define  VAR_SCHEME 137 
#define  VAR_SIZE_DOWNLOAD 136 
#define  VAR_SIZE_UPLOAD 135 
#define  VAR_SPEED_DOWNLOAD 134 
#define  VAR_SPEED_UPLOAD 133 
#define  VAR_SSL_VERIFY_RESULT 132 
#define  VAR_STARTTRANSFER_TIME 131 
#define  VAR_STDERR 130 
#define  VAR_STDOUT 129 
#define  VAR_TOTAL_TIME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* replacements ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 
 char* FUNC5 (char const*,char) ; 

void FUNC6(CURL *curl, struct OutStruct *outs, const char *writeinfo)
{
  FILE *stream = stdout;
  const char *ptr = writeinfo;
  char *stringp = NULL;
  long longinfo;
  double doubleinfo;

  while(ptr && *ptr) {
    if('%' == *ptr && ptr[1]) {
      if('%' == ptr[1]) {
        /* an escaped %-letter */
        FUNC3('%', stream);
        ptr += 2;
      }
      else {
        /* this is meant as a variable to output */
        char *end;
        if('{' == ptr[1]) {
          char keepit;
          int i;
          bool match = FALSE;
          end = FUNC5(ptr, '}');
          ptr += 2; /* pass the % and the { */
          if(!end) {
            FUNC4("%{", stream);
            continue;
          }
          keepit = *end;
          *end = 0; /* zero terminate */
          for(i = 0; replacements[i].name; i++) {
            if(FUNC1(ptr, replacements[i].name)) {
              match = TRUE;
              switch(replacements[i].id) {
              case VAR_EFFECTIVE_URL:
                if((CURLE_OK ==
                    FUNC0(curl, CURLINFO_EFFECTIVE_URL, &stringp))
                   && stringp)
                  FUNC4(stringp, stream);
                break;
              case VAR_HTTP_CODE:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_RESPONSE_CODE, &longinfo))
                  FUNC2(stream, "%03ld", longinfo);
                break;
              case VAR_HTTP_CODE_PROXY:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_HTTP_CONNECTCODE,
                                     &longinfo))
                  FUNC2(stream, "%03ld", longinfo);
                break;
              case VAR_HEADER_SIZE:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_HEADER_SIZE, &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_REQUEST_SIZE:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_REQUEST_SIZE, &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_NUM_CONNECTS:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_NUM_CONNECTS, &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_REDIRECT_COUNT:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_REDIRECT_COUNT, &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_REDIRECT_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_REDIRECT_TIME,
                                     &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_TOTAL_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_TOTAL_TIME, &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_NAMELOOKUP_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_NAMELOOKUP_TIME,
                                     &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_CONNECT_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_CONNECT_TIME, &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_APPCONNECT_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_APPCONNECT_TIME,
                                     &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_PRETRANSFER_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_PRETRANSFER_TIME,
                                     &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_STARTTRANSFER_TIME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_STARTTRANSFER_TIME,
                                     &doubleinfo))
                  FUNC2(stream, "%.6f", doubleinfo);
                break;
              case VAR_SIZE_UPLOAD:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SIZE_UPLOAD, &doubleinfo))
                  FUNC2(stream, "%.0f", doubleinfo);
                break;
              case VAR_SIZE_DOWNLOAD:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SIZE_DOWNLOAD,
                                     &doubleinfo))
                  FUNC2(stream, "%.0f", doubleinfo);
                break;
              case VAR_SPEED_DOWNLOAD:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SPEED_DOWNLOAD,
                                     &doubleinfo))
                  FUNC2(stream, "%.3f", doubleinfo);
                break;
              case VAR_SPEED_UPLOAD:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SPEED_UPLOAD, &doubleinfo))
                  FUNC2(stream, "%.3f", doubleinfo);
                break;
              case VAR_CONTENT_TYPE:
                if((CURLE_OK ==
                    FUNC0(curl, CURLINFO_CONTENT_TYPE, &stringp))
                   && stringp)
                  FUNC4(stringp, stream);
                break;
              case VAR_FTP_ENTRY_PATH:
                if((CURLE_OK ==
                    FUNC0(curl, CURLINFO_FTP_ENTRY_PATH, &stringp))
                   && stringp)
                  FUNC4(stringp, stream);
                break;
              case VAR_REDIRECT_URL:
                if((CURLE_OK ==
                    FUNC0(curl, CURLINFO_REDIRECT_URL, &stringp))
                   && stringp)
                  FUNC4(stringp, stream);
                break;
              case VAR_SSL_VERIFY_RESULT:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SSL_VERIFYRESULT,
                                     &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_PROXY_SSL_VERIFY_RESULT:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_PROXY_SSL_VERIFYRESULT,
                                     &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_EFFECTIVE_FILENAME:
                if(outs->filename)
                  FUNC2(stream, "%s", outs->filename);
                break;
              case VAR_PRIMARY_IP:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_PRIMARY_IP,
                                     &stringp))
                  FUNC2(stream, "%s", stringp);
                break;
              case VAR_PRIMARY_PORT:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_PRIMARY_PORT,
                                     &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_LOCAL_IP:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_LOCAL_IP,
                                     &stringp))
                  FUNC2(stream, "%s", stringp);
                break;
              case VAR_LOCAL_PORT:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_LOCAL_PORT,
                                     &longinfo))
                  FUNC2(stream, "%ld", longinfo);
                break;
              case VAR_HTTP_VERSION:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_HTTP_VERSION,
                                     &longinfo)) {
                  const char *version = "0";
                  switch(longinfo) {
                  case CURL_HTTP_VERSION_1_0:
                    version = "1.0";
                    break;
                  case CURL_HTTP_VERSION_1_1:
                    version = "1.1";
                    break;
                  case CURL_HTTP_VERSION_2_0:
                    version = "2";
                    break;
                  case CURL_HTTP_VERSION_3:
                    version = "3";
                    break;
                  }

                  FUNC2(stream, "%s", version);
                }
                break;
              case VAR_SCHEME:
                if(CURLE_OK ==
                   FUNC0(curl, CURLINFO_SCHEME,
                                     &stringp))
                  FUNC2(stream, "%s", stringp);
                break;
              case VAR_STDOUT:
                stream = stdout;
                break;
              case VAR_STDERR:
                stream = stderr;
                break;
              default:
                break;
              }
              break;
            }
          }
          if(!match) {
            FUNC2(stderr, "curl: unknown --write-out variable: '%s'\n", ptr);
          }
          ptr = end + 1; /* pass the end */
          *end = keepit;
        }
        else {
          /* illegal syntax, then just output the characters that are used */
          FUNC3('%', stream);
          FUNC3(ptr[1], stream);
          ptr += 2;
        }
      }
    }
    else if('\\' == *ptr && ptr[1]) {
      switch(ptr[1]) {
      case 'r':
        FUNC3('\r', stream);
        break;
      case 'n':
        FUNC3('\n', stream);
        break;
      case 't':
        FUNC3('\t', stream);
        break;
      default:
        /* unknown, just output this */
        FUNC3(*ptr, stream);
        FUNC3(ptr[1], stream);
        break;
      }
      ptr += 2;
    }
    else {
      FUNC3(*ptr, stream);
      ptr++;
    }
  }

}