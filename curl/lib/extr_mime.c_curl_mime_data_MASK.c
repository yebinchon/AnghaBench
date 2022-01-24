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
struct TYPE_4__ {char* data; size_t datasize; int /*<<< orphan*/  kind; int /*<<< orphan*/  freefunc; int /*<<< orphan*/  seekfunc; int /*<<< orphan*/  readfunc; } ;
typedef  TYPE_1__ curl_mimepart ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_FUNCTION_ARGUMENT ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 size_t CURL_ZERO_TERMINATED ; 
 int /*<<< orphan*/  MIMEKIND_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  mime_mem_free ; 
 int /*<<< orphan*/  mime_mem_read ; 
 int /*<<< orphan*/  mime_mem_seek ; 
 size_t FUNC3 (char const*) ; 

CURLcode FUNC4(curl_mimepart *part,
                        const char *data, size_t datasize)
{
  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  FUNC0(part);

  if(data) {
    if(datasize == CURL_ZERO_TERMINATED)
      datasize = FUNC3(data);

    part->data = FUNC1(datasize + 1);
    if(!part->data)
      return CURLE_OUT_OF_MEMORY;

    part->datasize = datasize;

    if(datasize)
      FUNC2(part->data, data, datasize);
    part->data[datasize] = '\0';    /* Set a nul terminator as sentinel. */

    part->readfunc = mime_mem_read;
    part->seekfunc = mime_mem_seek;
    part->freefunc = mime_mem_free;
    part->kind = MIMEKIND_DATA;
  }

  return CURLE_OK;
}