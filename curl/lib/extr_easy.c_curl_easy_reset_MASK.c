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
struct auth {int dummy; } ;
struct UserDefined {int dummy; } ;
struct Progress {int dummy; } ;
struct TYPE_4__ {long buffer_size; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int current_speed; char* buffer; TYPE_2__ authproxy; TYPE_2__ authhost; } ;
struct Curl_easy {TYPE_1__ state; TYPE_2__ set; TYPE_2__ progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRS_HIDE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC9(struct Curl_easy *data)
{
  long old_buffer_size = data->set.buffer_size;

  FUNC0(data);

  /* zero out UserDefined data: */
  FUNC1(data);
  FUNC7(&data->set, 0, sizeof(struct UserDefined));
  (void)FUNC3(data);

  /* zero out Progress data: */
  FUNC7(&data->progress, 0, sizeof(struct Progress));

  /* zero out PureInfo data: */
  FUNC4(data);

  data->progress.flags |= PGRS_HIDE;
  data->state.current_speed = -1; /* init to negative == impossible */

  /* zero out authentication data: */
  FUNC7(&data->state.authhost, 0, sizeof(struct auth));
  FUNC7(&data->state.authproxy, 0, sizeof(struct auth));

#if !defined(CURL_DISABLE_HTTP) && !defined(CURL_DISABLE_CRYPTO_AUTH)
  FUNC2(data);
#endif

  /* resize receive buffer */
  if(old_buffer_size != data->set.buffer_size) {
    char *newbuff = FUNC8(data->state.buffer, data->set.buffer_size + 1);
    if(!newbuff) {
      FUNC5(FUNC6(stderr, "Error: realloc of buffer failed\n"));
      /* nothing we can do here except use the old size */
      data->set.buffer_size = old_buffer_size;
    }
    else
      data->state.buffer = newbuff;
  }
}