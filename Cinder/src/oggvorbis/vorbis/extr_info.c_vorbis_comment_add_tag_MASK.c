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
typedef  int /*<<< orphan*/  vorbis_comment ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(vorbis_comment *vc, const char *tag, const char *contents){
  char *comment=FUNC0(FUNC3(tag)+FUNC3(contents)+2); /* +2 for = and \0 */
  FUNC2(comment, tag);
  FUNC1(comment, "=");
  FUNC1(comment, contents);
  FUNC4(vc, comment);
}