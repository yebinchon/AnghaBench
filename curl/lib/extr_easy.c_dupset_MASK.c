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
struct TYPE_4__ {scalar_t__ resolve; int /*<<< orphan*/  mimepost; scalar_t__* str; scalar_t__ postfields; scalar_t__ postfieldsize; } ;
struct TYPE_3__ {scalar_t__ resolve; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ change; } ;
typedef  enum dupstring { ____Placeholder_dupstring } dupstring ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct Curl_easy*) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__) ; 
 int STRING_COPYPOSTFIELDS ; 
 int STRING_LAST ; 
 int STRING_LASTZEROTERMINATED ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static CURLcode FUNC6(struct Curl_easy *dst, struct Curl_easy *src)
{
  CURLcode result = CURLE_OK;
  enum dupstring i;

  /* Copy src->set into dst->set first, then deal with the strings
     afterwards */
  dst->set = src->set;
  FUNC2(&dst->set.mimepost, dst);

  /* clear all string pointers first */
  FUNC5(dst->set.str, 0, STRING_LAST * sizeof(char *));

  /* duplicate all strings */
  for(i = (enum dupstring)0; i< STRING_LASTZEROTERMINATED; i++) {
    result = FUNC3(&dst->set.str[i], src->set.str[i]);
    if(result)
      return result;
  }

  /* duplicate memory areas pointed to */
  i = STRING_COPYPOSTFIELDS;
  if(src->set.postfieldsize && src->set.str[i]) {
    /* postfieldsize is curl_off_t, Curl_memdup() takes a size_t ... */
    dst->set.str[i] = FUNC0(src->set.str[i],
                                  FUNC4(src->set.postfieldsize));
    if(!dst->set.str[i])
      return CURLE_OUT_OF_MEMORY;
    /* point to the new copy */
    dst->set.postfields = dst->set.str[i];
  }

  /* Duplicate mime data. */
  result = FUNC1(&dst->set.mimepost, &src->set.mimepost);

  if(src->set.resolve)
    dst->change.resolve = dst->set.resolve;

  return result;
}