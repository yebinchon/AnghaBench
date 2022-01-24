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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(const char *cookie_path)
{
  size_t len;
  char *new_path = FUNC2(cookie_path);
  if(!new_path)
    return NULL;

  /* some stupid site sends path attribute with '"'. */
  len = FUNC3(new_path);
  if(new_path[0] == '\"') {
    FUNC1((void *)new_path, (const void *)(new_path + 1), len);
    len--;
  }
  if(len && (new_path[len - 1] == '\"')) {
    new_path[len - 1] = 0x0;
    len--;
  }

  /* RFC6265 5.2.4 The Path Attribute */
  if(new_path[0] != '/') {
    /* Let cookie-path be the default-path. */
    FUNC0(new_path);
    new_path = FUNC2("/");
    return new_path;
  }

  /* convert /hoge/ to /hoge */
  if(len && new_path[len - 1] == '/') {
    new_path[len - 1] = 0x0;
  }

  return new_path;
}