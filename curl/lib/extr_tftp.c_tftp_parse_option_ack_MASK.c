#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int blksize; long requested_blksize; TYPE_1__* conn; } ;
typedef  TYPE_3__ tftp_state_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  upload; } ;
struct Curl_easy {TYPE_2__ set; } ;
struct TYPE_5__ {struct Curl_easy* data; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_TFTP_ILLEGAL ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,long) ; 
 int TFTP_BLKSIZE_DEFAULT ; 
 long TFTP_BLKSIZE_MAX ; 
 long TFTP_BLKSIZE_MIN ; 
 int /*<<< orphan*/  TFTP_OPTION_BLKSIZE ; 
 int /*<<< orphan*/  TFTP_OPTION_TSIZE ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*,char*,char const*,...) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (char const*,int,char const**,char const**) ; 

__attribute__((used)) static CURLcode FUNC6(tftp_state_data_t *state,
                                      const char *ptr, int len)
{
  const char *tmp = ptr;
  struct Curl_easy *data = state->conn->data;

  /* if OACK doesn't contain blksize option, the default (512) must be used */
  state->blksize = TFTP_BLKSIZE_DEFAULT;

  while(tmp < ptr + len) {
    const char *option, *value;

    tmp = FUNC5(tmp, ptr + len - tmp, &option, &value);
    if(tmp == NULL) {
      FUNC2(data, "Malformed ACK packet, rejecting");
      return CURLE_TFTP_ILLEGAL;
    }

    FUNC3(data, "got option=(%s) value=(%s)\n", option, value);

    if(FUNC1(option, TFTP_OPTION_BLKSIZE)) {
      long blksize;

      blksize = FUNC4(value, NULL, 10);

      if(!blksize) {
        FUNC2(data, "invalid blocksize value in OACK packet");
        return CURLE_TFTP_ILLEGAL;
      }
      if(blksize > TFTP_BLKSIZE_MAX) {
        FUNC2(data, "%s (%d)", "blksize is larger than max supported",
              TFTP_BLKSIZE_MAX);
        return CURLE_TFTP_ILLEGAL;
      }
      else if(blksize < TFTP_BLKSIZE_MIN) {
        FUNC2(data, "%s (%d)", "blksize is smaller than min supported",
              TFTP_BLKSIZE_MIN);
        return CURLE_TFTP_ILLEGAL;
      }
      else if(blksize > state->requested_blksize) {
        /* could realloc pkt buffers here, but the spec doesn't call out
         * support for the server requesting a bigger blksize than the client
         * requests */
        FUNC2(data, "%s (%ld)",
              "server requested blksize larger than allocated", blksize);
        return CURLE_TFTP_ILLEGAL;
      }

      state->blksize = (int)blksize;
      FUNC3(data, "%s (%d) %s (%d)\n", "blksize parsed from OACK",
            state->blksize, "requested", state->requested_blksize);
    }
    else if(FUNC1(option, TFTP_OPTION_TSIZE)) {
      long tsize = 0;

      tsize = FUNC4(value, NULL, 10);
      FUNC3(data, "%s (%ld)\n", "tsize parsed from OACK", tsize);

      /* tsize should be ignored on upload: Who cares about the size of the
         remote file? */
      if(!data->set.upload) {
        if(!tsize) {
          FUNC2(data, "invalid tsize -:%s:- value in OACK packet", value);
          return CURLE_TFTP_ILLEGAL;
        }
        FUNC0(data, tsize);
      }
    }
  }

  return CURLE_OK;
}