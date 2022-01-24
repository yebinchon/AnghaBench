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
struct FtpFile {scalar_t__ stream; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (void*,size_t,size_t,scalar_t__) ; 

__attribute__((used)) static size_t FUNC2(void *buffer, size_t size, size_t nmemb, void *stream)
{
  struct FtpFile *out = (struct FtpFile *)stream;
  if(!out->stream) {
    /* open file for writing */
    out->stream = FUNC0(out->filename, "wb");
    if(!out->stream)
      return -1; /* failure, can't open file to write */
  }
  return FUNC1(buffer, size, nmemb, out->stream);
}