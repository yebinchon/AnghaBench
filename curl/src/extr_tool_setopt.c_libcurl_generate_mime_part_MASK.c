#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* filename; int kind; char const* data; char const* encoder; char const* name; char const* type; scalar_t__ headers; struct TYPE_4__* prev; } ;
typedef  TYPE_1__ tool_mime ;
struct GlobalConfig {int dummy; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
#define  TOOLMIME_DATA 133 
#define  TOOLMIME_FILE 132 
#define  TOOLMIME_FILEDATA 131 
#define  TOOLMIME_PARTS 130 
#define  TOOLMIME_STDIN 129 
#define  TOOLMIME_STDINDATA 128 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct GlobalConfig*,TYPE_1__*,int*) ; 
 scalar_t__ FUNC9 (scalar_t__,int*) ; 
 char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,size_t) ; 
 size_t FUNC12 (char const*) ; 

__attribute__((used)) static CURLcode FUNC13(CURL *curl,
                                           struct GlobalConfig *config,
                                           tool_mime *part,
                                           int mimeno)
{
  CURLcode ret = CURLE_OK;
  int submimeno = 0;
  char *escaped = NULL;
  const char *data = NULL;
  const char *filename = part->filename;

  /* Parts are linked in reverse order. */
  if(part->prev) {
    ret = FUNC13(curl, config, part->prev, mimeno);
    if(ret)
      return ret;
  }

  /* Create the part. */
  FUNC2("part%d = curl_mime_addpart(mime%d);", mimeno, mimeno);

  switch(part->kind) {
  case TOOLMIME_PARTS:
    ret = FUNC8(curl, config, part, &submimeno);
    if(!ret) {
      FUNC2("curl_mime_subparts(part%d, mime%d);", mimeno, submimeno);
      FUNC1("mime%d = NULL;", submimeno);   /* Avoid freeing in CLEAN. */
    }
    break;

  case TOOLMIME_DATA:
#ifdef CURL_DOES_CONVERSIONS
    /* Data will be set in ASCII, thus issue a comment with clear text. */
    escaped = c_escape(part->data, CURL_ZERO_TERMINATED);
    NULL_CHECK(escaped);
    CODE1("/* \"%s\" */", escaped);

    /* Our data is always textual: convert it to ASCII. */
    {
      size_t size = strlen(part->data);
      char *cp = malloc(size + 1);

      NULL_CHECK(cp);
      memcpy(cp, part->data, size + 1);
      ret = convert_to_network(cp, size);
      data = cp;
    }
#else
    data = part->data;
#endif
    if(!ret) {
      FUNC3(escaped);
      escaped = FUNC5(data, CURL_ZERO_TERMINATED);
      FUNC4(escaped);
      FUNC2("curl_mime_data(part%d, \"%s\", CURL_ZERO_TERMINATED);",
                            mimeno, escaped);
    }
    break;

  case TOOLMIME_FILE:
  case TOOLMIME_FILEDATA:
    escaped = FUNC5(part->data, CURL_ZERO_TERMINATED);
    FUNC4(escaped);
    FUNC2("curl_mime_filedata(part%d, \"%s\");", mimeno, escaped);
    if(part->kind == TOOLMIME_FILEDATA && !filename) {
      FUNC1("curl_mime_filename(part%d, NULL);", mimeno);
    }
    break;

  case TOOLMIME_STDIN:
    if(!filename)
      filename = "-";
    /* FALLTHROUGH */
  case TOOLMIME_STDINDATA:
    /* Can only be reading stdin in the current context. */
    FUNC1("curl_mime_data_cb(part%d, -1, (curl_read_callback) fread, \\",
          mimeno);
    FUNC0("                  (curl_seek_callback) fseek, NULL, stdin);");
    break;
  default:
    /* Other cases not possible in this context. */
    break;
  }

  if(!ret && part->encoder) {
    FUNC3(escaped);
    escaped = FUNC5(part->encoder, CURL_ZERO_TERMINATED);
    FUNC4(escaped);
    FUNC2("curl_mime_encoder(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && filename) {
    FUNC3(escaped);
    escaped = FUNC5(filename, CURL_ZERO_TERMINATED);
    FUNC4(escaped);
    FUNC2("curl_mime_filename(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->name) {
    FUNC3(escaped);
    escaped = FUNC5(part->name, CURL_ZERO_TERMINATED);
    FUNC4(escaped);
    FUNC2("curl_mime_name(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->type) {
    FUNC3(escaped);
    escaped = FUNC5(part->type, CURL_ZERO_TERMINATED);
    FUNC4(escaped);
    FUNC2("curl_mime_type(part%d, \"%s\");", mimeno, escaped);
  }

  if(!ret && part->headers) {
    int slistno;

    ret = FUNC9(part->headers, &slistno);
    if(!ret) {
      FUNC2("curl_mime_headers(part%d, slist%d, 1);", mimeno, slistno);
      FUNC1("slist%d = NULL;", slistno); /* Prevent CLEANing. */
    }
  }

nomem:
#ifdef CURL_DOES_CONVERSIONS
  if(data)
    free((char *) data);
#endif

  FUNC3(escaped);
  return ret;
}