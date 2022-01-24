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
struct connectdata {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  contenc_writer ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_CONTENT_ENCODING ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static CURLcode FUNC3(struct connectdata *conn,
                                     contenc_writer *writer,
                                     const char *buf, size_t nbytes)
{
  char *all = FUNC0();

  (void) writer;
  (void) buf;
  (void) nbytes;

  if(!all)
    return CURLE_OUT_OF_MEMORY;
  FUNC1(conn->data, "Unrecognized content encoding type. "
                    "libcurl understands %s content encodings.", all);
  FUNC2(all);
  return CURLE_BAD_CONTENT_ENCODING;
}