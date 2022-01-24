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
struct Curl_multi {scalar_t__ in_callback; } ;
struct TYPE_2__ {int /*<<< orphan*/  maxconnects; scalar_t__* errorbuffer; } ;
struct Curl_easy {struct Curl_multi* multi; TYPE_1__ set; struct Curl_multi* multi_easy; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  scalar_t__ CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_FUNCTION_ARGUMENT ; 
 int /*<<< orphan*/  CURLE_FAILED_INIT ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_RECURSIVE_API_CALL ; 
 int /*<<< orphan*/  CURLMOPT_MAXCONNECTS ; 
 scalar_t__ CURLM_OUT_OF_MEMORY ; 
 struct Curl_multi* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct Curl_multi*,struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_multi*,struct Curl_easy*) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_multi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC7 (struct Curl_multi*) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*) ; 
 int /*<<< orphan*/  pipe_st ; 
 int /*<<< orphan*/  FUNC9 (struct Curl_easy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CURLcode FUNC11(struct Curl_easy *data, bool events)
{
  struct Curl_multi *multi;
  CURLMcode mcode;
  CURLcode result = CURLE_OK;
  FUNC1(pipe_st);

  if(!data)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  if(data->set.errorbuffer)
    /* clear this as early as possible */
    data->set.errorbuffer[0] = 0;

  if(data->multi) {
    FUNC8(data, "easy handle already used in multi handle");
    return CURLE_FAILED_INIT;
  }

  if(data->multi_easy)
    multi = data->multi_easy;
  else {
    /* this multi handle will only ever have a single easy handled attached
       to it, so make it use minimal hashes */
    multi = FUNC0(1, 3);
    if(!multi)
      return CURLE_OUT_OF_MEMORY;
    data->multi_easy = multi;
  }

  if(multi->in_callback)
    return CURLE_RECURSIVE_API_CALL;

  /* Copy the MAXCONNECTS option to the multi handle */
  FUNC5(multi, CURLMOPT_MAXCONNECTS, data->set.maxconnects);

  mcode = FUNC2(multi, data);
  if(mcode) {
    FUNC3(multi);
    if(mcode == CURLM_OUT_OF_MEMORY)
      return CURLE_OUT_OF_MEMORY;
    return CURLE_FAILED_INIT;
  }

  FUNC9(data, &pipe_st);

  /* assign this after curl_multi_add_handle() since that function checks for
     it and rejects this handle otherwise */
  data->multi = multi;

  /* run the transfer */
  result = events ? FUNC6(multi) : FUNC7(multi);

  /* ignoring the return code isn't nice, but atm we can't really handle
     a failure here, room for future improvement! */
  (void)FUNC4(multi, data);

  FUNC10(&pipe_st);

  /* The multi handle is kept alive, owned by the easy handle */
  return result;
}