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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static void FUNC3(const char *url, char *sdp_filename,
                             size_t namelen)
{
  const char *s = FUNC2(url, '/');
  FUNC1(sdp_filename, "video.sdp");
  if(s != NULL) {
    s++;
    if(s[0] != '\0') {
      FUNC0(sdp_filename, namelen, "%s.sdp", s);
    }
  }
}