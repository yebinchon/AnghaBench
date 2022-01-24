#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int current_speed; struct Curl_easy* headerbuff; struct Curl_easy* buffer; int /*<<< orphan*/  resolver; int /*<<< orphan*/ * lastconnect; scalar_t__ headersize; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct Curl_easy {TYPE_2__ state; TYPE_1__ progress; int /*<<< orphan*/  magic; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLEASY_MAGIC_NUMBER ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*) ; 
 scalar_t__ FUNC2 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct Curl_easy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ HEADERSIZE ; 
 int /*<<< orphan*/  PGRS_HIDE ; 
 scalar_t__ READBUFFER_SIZE ; 
 struct Curl_easy* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct Curl_easy*) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

CURLcode FUNC11(struct Curl_easy **curl)
{
  CURLcode result;
  struct Curl_easy *data;

  /* Very simple start-up: alloc the struct, init it with zeroes and return */
  data = FUNC7(1, sizeof(struct Curl_easy));
  if(!data) {
    /* this is a very serious error */
    FUNC6(FUNC8(stderr, "Error: calloc of Curl_easy failed\n"));
    return CURLE_OUT_OF_MEMORY;
  }

  data->magic = CURLEASY_MAGIC_NUMBER;

  result = FUNC5(data, &data->state.resolver);
  if(result) {
    FUNC6(FUNC8(stderr, "Error: resolver_init failed\n"));
    FUNC9(data);
    return result;
  }

  /* We do some initial setup here, all those fields that can't be just 0 */

  data->state.buffer = FUNC10(READBUFFER_SIZE + 1);
  if(!data->state.buffer) {
    FUNC6(FUNC8(stderr, "Error: malloc of buffer failed\n"));
    result = CURLE_OUT_OF_MEMORY;
  }
  else {
    data->state.headerbuff = FUNC10(HEADERSIZE);
    if(!data->state.headerbuff) {
      FUNC6(FUNC8(stderr, "Error: malloc of headerbuff failed\n"));
      result = CURLE_OUT_OF_MEMORY;
    }
    else {
      result = FUNC2(data);

      data->state.headersize = HEADERSIZE;
      FUNC0(data);
      FUNC3(data);

      /* most recent connection is not yet defined */
      data->state.lastconnect = NULL;

      data->progress.flags |= PGRS_HIDE;
      data->state.current_speed = -1; /* init to negative == impossible */
    }
  }

  if(result) {
    FUNC4(data->state.resolver);
    FUNC9(data->state.buffer);
    FUNC9(data->state.headerbuff);
    FUNC1(data);
    FUNC9(data);
    data = NULL;
  }
  else
    *curl = data;

  return result;
}