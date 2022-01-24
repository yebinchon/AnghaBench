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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (char const*,char) ; 
 char* FUNC8 (char*,char*) ; 

char *FUNC9(char *url, const char *filename)
{
  /* If no file name part is given in the URL, we add this file name */
  char *ptr = FUNC8(url, "://");
  CURL *curl = FUNC4(); /* for url escaping */
  if(!curl)
    return NULL; /* error! */
  if(ptr)
    ptr += 3;
  else
    ptr = url;
  ptr = FUNC7(ptr, '/');
  if(!ptr || !FUNC6(++ptr)) {
    /* The URL has no file name part, add the local file name. In order
       to be able to do so, we have to create a new URL in another
       buffer.*/

    /* We only want the part of the local path that is on the right
       side of the rightmost slash and backslash. */
    const char *filep = FUNC7(filename, '/');
    char *file2 = FUNC7(filep?filep:filename, '\\');
    char *encfile;

    if(file2)
      filep = file2 + 1;
    else if(filep)
      filep++;
    else
      filep = filename;

    /* URL encode the file name */
    encfile = FUNC3(curl, filep, 0 /* use strlen */);
    if(encfile) {
      char *urlbuffer;
      if(ptr)
        /* there is a trailing slash on the URL */
        urlbuffer = FUNC1("%s%s", url, encfile);
      else
        /* there is no trailing slash on the URL */
        urlbuffer = FUNC1("%s/%s", url, encfile);

      FUNC5(encfile);
      FUNC0(url);

      if(!urlbuffer)
        return NULL;

      url = urlbuffer; /* use our new URL instead! */
    }
    else
      FUNC0(url);
  }
  FUNC2(curl);
  return url;
}