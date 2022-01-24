#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {char* data; int /*<<< orphan*/ * next; } ;
struct TYPE_8__ {int state; scalar_t__ ptr; } ;
struct TYPE_7__ {int flags; scalar_t__ easy; TYPE_3__ state; int /*<<< orphan*/ * fp; int /*<<< orphan*/  kind; int /*<<< orphan*/  encoder; int /*<<< orphan*/  encstate; int /*<<< orphan*/ * userheaders; int /*<<< orphan*/ * curlheaders; } ;
typedef  TYPE_1__ curl_mimepart ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
#define  CURL_READFUNC_ABORT 137 
#define  CURL_READFUNC_PAUSE 136 
 scalar_t__ FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  MIMEKIND_FILE ; 
#define  MIMESTATE_BEGIN 135 
#define  MIMESTATE_BODY 134 
#define  MIMESTATE_CONTENT 133 
#define  MIMESTATE_CURLHEADERS 132 
#define  MIMESTATE_END 131 
#define  MIMESTATE_EOH 130 
#define  MIMESTATE_USERHEADERS 129 
 int MIME_BODY_ONLY ; 
#define  READ_ERROR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct curl_slist*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int const,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (TYPE_1__*,char*,size_t) ; 
 size_t FUNC6 (TYPE_1__*,char*,size_t) ; 
 size_t FUNC7 (TYPE_3__*,char*,size_t,char*,int,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static size_t FUNC9(curl_mimepart *part,
                            char *buffer, size_t bufsize)
{
  size_t cursize = 0;
#ifdef CURL_DOES_CONVERSIONS
  char *convbuf = buffer;
#endif

  /* Readback from part. */

  while(bufsize) {
    size_t sz = 0;
    struct curl_slist *hdr = (struct curl_slist *) part->state.ptr;
    switch(part->state.state) {
    case MIMESTATE_BEGIN:
      FUNC4(&part->state,
                   (part->flags & MIME_BODY_ONLY)?
                     MIMESTATE_BODY: MIMESTATE_CURLHEADERS,
                   part->curlheaders);
      break;
    case MIMESTATE_USERHEADERS:
      if(!hdr) {
        FUNC4(&part->state, MIMESTATE_EOH, NULL);
        break;
      }
      if(FUNC3(hdr, "Content-Type", 12)) {
        FUNC4(&part->state, MIMESTATE_USERHEADERS, hdr->next);
        break;
      }
      /* FALLTHROUGH */
    case MIMESTATE_CURLHEADERS:
      if(!hdr)
        FUNC4(&part->state, MIMESTATE_USERHEADERS, part->userheaders);
      else {
        sz = FUNC7(&part->state, buffer, bufsize,
                            hdr->data, FUNC8(hdr->data), "\r\n");
        if(!sz)
          FUNC4(&part->state, part->state.state, hdr->next);
      }
      break;
    case MIMESTATE_EOH:
      sz = FUNC7(&part->state, buffer, bufsize, "\r\n", 2, "");
      if(!sz)
        FUNC4(&part->state, MIMESTATE_BODY, NULL);
      break;
    case MIMESTATE_BODY:
#ifdef CURL_DOES_CONVERSIONS
      if(part->easy && convbuf < buffer) {
        CURLcode result = Curl_convert_to_network(part->easy, convbuf,
                                                  buffer - convbuf);
        if(result)
          return READ_ERROR;
        convbuf = buffer;
      }
#endif
      FUNC1(&part->encstate);
      FUNC4(&part->state, MIMESTATE_CONTENT, NULL);
      break;
    case MIMESTATE_CONTENT:
      if(part->encoder)
        sz = FUNC5(part, buffer, bufsize);
      else
        sz = FUNC6(part, buffer, bufsize);
      switch(sz) {
      case 0:
        FUNC4(&part->state, MIMESTATE_END, NULL);
        /* Try sparing open file descriptors. */
        if(part->kind == MIMEKIND_FILE && part->fp) {
          FUNC2(part->fp);
          part->fp = NULL;
        }
        /* FALLTHROUGH */
      case CURL_READFUNC_ABORT:
      case CURL_READFUNC_PAUSE:
      case READ_ERROR:
        return cursize? cursize: sz;
      }
      break;
    case MIMESTATE_END:
      return cursize;
    default:
      break;    /* Other values not in part state. */
    }

    /* Bump buffer and counters according to read size. */
    cursize += sz;
    buffer += sz;
    bufsize -= sz;
  }

#ifdef CURL_DOES_CONVERSIONS
      if(part->easy && convbuf < buffer &&
         part->state.state < MIMESTATE_BODY) {
        CURLcode result = Curl_convert_to_network(part->easy, convbuf,
                                                  buffer - convbuf);
        if(result)
          return READ_ERROR;
      }
#endif

  return cursize;
}