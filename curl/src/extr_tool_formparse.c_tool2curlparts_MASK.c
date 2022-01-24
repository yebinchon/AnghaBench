#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* filename; int kind; char* data; int /*<<< orphan*/  name; int /*<<< orphan*/  encoder; int /*<<< orphan*/  headers; int /*<<< orphan*/  type; int /*<<< orphan*/  size; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ tool_mime ;
typedef  int /*<<< orphan*/  curl_seek_callback ;
typedef  int /*<<< orphan*/  curl_read_callback ;
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  curl_mime ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
#define  TOOLMIME_DATA 133 
#define  TOOLMIME_FILE 132 
#define  TOOLMIME_FILEDATA 131 
#define  TOOLMIME_PARTS 130 
#define  TOOLMIME_STDIN 129 
#define  TOOLMIME_STDINDATA 128 
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,size_t) ; 
 size_t FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  tool_mime_stdin_read ; 
 int /*<<< orphan*/  tool_mime_stdin_seek ; 

__attribute__((used)) static CURLcode FUNC17(CURL *curl, tool_mime *m, curl_mime *mime)
{
  CURLcode ret = CURLE_OK;
  curl_mimepart *part = NULL;
  curl_mime *submime = NULL;
  const char *filename = NULL;

  if(m) {
    ret = FUNC17(curl, m->prev, mime);
    if(!ret) {
      part = FUNC1(mime);
      if(!part)
        ret = CURLE_OUT_OF_MEMORY;
    }
    if(!ret) {
      filename = m->filename;
      switch(m->kind) {
      case TOOLMIME_PARTS:
        ret = FUNC16(curl, m, &submime);
        if(!ret) {
          ret = FUNC10(part, submime);
          if(ret)
            FUNC7(submime);
        }
        break;

      case TOOLMIME_DATA:
#ifdef CURL_DOES_CONVERSIONS
        /* Our data is always textual: convert it to ASCII. */
        {
          size_t size = strlen(m->data);
          char *cp = malloc(size + 1);

          if(!cp)
            ret = CURLE_OUT_OF_MEMORY;
          else {
            memcpy(cp, m->data, size + 1);
            ret = convert_to_network(cp, size);
            if(!ret)
              ret = curl_mime_data(part, cp, CURL_ZERO_TERMINATED);
            free(cp);
          }
        }
#else
        ret = FUNC2(part, m->data, CURL_ZERO_TERMINATED);
#endif
        break;

      case TOOLMIME_FILE:
      case TOOLMIME_FILEDATA:
        ret = FUNC5(part, m->data);
        if(!ret && m->kind == TOOLMIME_FILEDATA && !filename)
          ret = FUNC6(part, NULL);
        break;

      case TOOLMIME_STDIN:
        if(!filename)
          filename = "-";
        /* FALLTHROUGH */
      case TOOLMIME_STDINDATA:
        ret = FUNC3(part, m->size,
                                (curl_read_callback) tool_mime_stdin_read,
                                (curl_seek_callback) tool_mime_stdin_seek,
                                NULL, m);
        break;

      default:
        /* Other cases not possible in this context. */
        break;
      }
    }
    if(!ret && filename)
      ret = FUNC6(part, filename);
    if(!ret)
      ret = FUNC11(part, m->type);
    if(!ret)
      ret = FUNC8(part, m->headers, 0);
    if(!ret)
      ret = FUNC4(part, m->encoder);
    if(!ret)
      ret = FUNC9(part, m->name);
  }
  return ret;
}