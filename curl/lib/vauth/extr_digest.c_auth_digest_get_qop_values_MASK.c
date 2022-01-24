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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int DIGEST_QOP_VALUE_AUTH ; 
 int DIGEST_QOP_VALUE_AUTH_CONF ; 
 int DIGEST_QOP_VALUE_AUTH_INT ; 
 int /*<<< orphan*/  DIGEST_QOP_VALUE_STRING_AUTH ; 
 int /*<<< orphan*/  DIGEST_QOP_VALUE_STRING_AUTH_CONF ; 
 int /*<<< orphan*/  DIGEST_QOP_VALUE_STRING_AUTH_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 

__attribute__((used)) static CURLcode FUNC4(const char *options, int *value)
{
  char *tmp;
  char *token;
  char *tok_buf = NULL;

  /* Initialise the output */
  *value = 0;

  /* Tokenise the list of qop values. Use a temporary clone of the buffer since
     strtok_r() ruins it. */
  tmp = FUNC2(options);
  if(!tmp)
    return CURLE_OUT_OF_MEMORY;

  token = FUNC3(tmp, ",", &tok_buf);
  while(token != NULL) {
    if(FUNC1(token, DIGEST_QOP_VALUE_STRING_AUTH))
      *value |= DIGEST_QOP_VALUE_AUTH;
    else if(FUNC1(token, DIGEST_QOP_VALUE_STRING_AUTH_INT))
      *value |= DIGEST_QOP_VALUE_AUTH_INT;
    else if(FUNC1(token, DIGEST_QOP_VALUE_STRING_AUTH_CONF))
      *value |= DIGEST_QOP_VALUE_AUTH_CONF;

    token = FUNC3(NULL, ",", &tok_buf);
  }

  FUNC0(tmp);

  return CURLE_OK;
}