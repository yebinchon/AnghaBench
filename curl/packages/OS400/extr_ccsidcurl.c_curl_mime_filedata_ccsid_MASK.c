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
typedef  int /*<<< orphan*/  curl_mimepart ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  curl_mime_filedata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int,int /*<<< orphan*/ ) ; 

CURLcode
FUNC1(curl_mimepart *part,
                         const char *filename, unsigned int ccsid)

{
  return FUNC0(part, filename, ccsid, curl_mime_filedata);
}