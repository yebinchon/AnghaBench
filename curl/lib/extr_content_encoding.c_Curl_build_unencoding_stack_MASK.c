#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct connectdata {struct Curl_easy* data; } ;
struct SingleRequest {int /*<<< orphan*/ * writer_stack; int /*<<< orphan*/  chunk; } ;
struct Curl_easy {struct SingleRequest req; } ;
typedef  int /*<<< orphan*/  content_encoding ;
typedef  int /*<<< orphan*/  contenc_writer ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  const client_encoding ; 
 int /*<<< orphan*/  error_encoding ; 
 int /*<<< orphan*/ * FUNC2 (char const*,size_t) ; 
 void* FUNC3 (struct connectdata*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

CURLcode FUNC5(struct connectdata *conn,
                                     const char *enclist, int maybechunked)
{
  struct Curl_easy *data = conn->data;
  struct SingleRequest *k = &data->req;

  do {
    const char *name;
    size_t namelen;

    /* Parse a single encoding name. */
    while(FUNC1(*enclist) || *enclist == ',')
      enclist++;

    name = enclist;

    for(namelen = 0; *enclist && *enclist != ','; enclist++)
      if(!FUNC1(*enclist))
        namelen = enclist - name + 1;

    /* Special case: chunked encoding is handled at the reader level. */
    if(maybechunked && namelen == 7 && FUNC4(name, "chunked", 7)) {
      k->chunk = TRUE;             /* chunks coming our way. */
      FUNC0(conn);   /* init our chunky engine. */
    }
    else if(namelen) {
      const content_encoding *encoding = FUNC2(name, namelen);
      contenc_writer *writer;

      if(!k->writer_stack) {
        k->writer_stack = FUNC3(conn, &client_encoding, NULL);

        if(!k->writer_stack)
          return CURLE_OUT_OF_MEMORY;
      }

      if(!encoding)
        encoding = &error_encoding;  /* Defer error at stack use. */

      /* Stack the unencoding stage. */
      writer = FUNC3(conn, encoding, k->writer_stack);
      if(!writer)
        return CURLE_OUT_OF_MEMORY;
      k->writer_stack = writer;
    }
  } while(*enclist);

  return CURLE_OK;
}