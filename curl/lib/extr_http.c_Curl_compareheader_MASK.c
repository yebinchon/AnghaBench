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
 int FALSE ; 
 scalar_t__ FUNC0 (char const) ; 
 int TRUE ; 
 char* FUNC1 (char const*,char) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

bool
FUNC4(const char *headerline, /* line to check */
                   const char *header,  /* header keyword _with_ colon */
                   const char *content) /* content string to find */
{
  /* RFC2616, section 4.2 says: "Each header field consists of a name followed
   * by a colon (":") and the field value. Field names are case-insensitive.
   * The field value MAY be preceded by any amount of LWS, though a single SP
   * is preferred." */

  size_t hlen = FUNC2(header);
  size_t clen;
  size_t len;
  const char *start;
  const char *end;

  if(!FUNC3(headerline, header, hlen))
    return FALSE; /* doesn't start with header */

  /* pass the header */
  start = &headerline[hlen];

  /* pass all white spaces */
  while(*start && FUNC0(*start))
    start++;

  /* find the end of the header line */
  end = FUNC1(start, '\r'); /* lines end with CRLF */
  if(!end) {
    /* in case there's a non-standard compliant line here */
    end = FUNC1(start, '\n');

    if(!end)
      /* hm, there's no line ending here, use the zero byte! */
      end = FUNC1(start, '\0');
  }

  len = end-start; /* length of the content part of the input line */
  clen = FUNC2(content); /* length of the word to find */

  /* find the content string in the rest of the line */
  for(; len >= clen; len--, start++) {
    if(FUNC3(start, content, clen))
      return TRUE; /* match! */
  }

  return FALSE; /* no match */
}