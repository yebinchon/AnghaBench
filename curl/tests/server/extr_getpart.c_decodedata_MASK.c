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
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC0 (char*,unsigned char**,size_t*) ; 
 int GPE_OK ; 
 int GPE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC3(char  **buf,   /* dest buffer */
                      size_t *len)   /* dest buffer data length */
{
  CURLcode error = CURLE_OK;
  unsigned char *buf64 = NULL;
  size_t src_len = 0;

  if(!*len)
    return GPE_OK;

  /* base64 decode the given buffer */
  error = FUNC0(*buf, &buf64, &src_len);
  if(error)
    return GPE_OUT_OF_MEMORY;

  if(!src_len) {
    /*
    ** currently there is no way to tell apart an OOM condition in
    ** Curl_base64_decode() from zero length decoded data. For now,
    ** let's just assume it is an OOM condition, currently we have
    ** no input for this function that decodes to zero length data.
    */
    FUNC1(buf64);

    return GPE_OUT_OF_MEMORY;
  }

  /* memcpy to support binary blobs */
  FUNC2(*buf, buf64, src_len);
  *len = src_len;
  *(*buf + src_len) = '\0';

  FUNC1(buf64);

  return GPE_OK;
}