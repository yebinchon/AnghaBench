#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; char** elements; scalar_t__ ptr_s; } ;
struct TYPE_7__ {TYPE_1__ Set; } ;
struct TYPE_8__ {int globindex; TYPE_2__ content; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ URLPattern ;
struct TYPE_9__ {char* glob_buffer; size_t size; TYPE_3__* pattern; } ;
typedef  TYPE_4__ URLGlob ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLE_URL_MALFORMAT ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  UPTSet ; 
 char** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int) ; 
 char** FUNC3 (char**,int) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static CURLcode FUNC5(URLGlob *glob, char **patternp,
                         size_t *posp, unsigned long *amount,
                         int globindex)
{
  /* processes a set expression with the point behind the opening '{'
     ','-separated elements are collected until the next closing '}'
  */
  URLPattern *pat;
  bool done = FALSE;
  char *buf = glob->glob_buffer;
  char *pattern = *patternp;
  char *opattern = pattern;
  size_t opos = *posp-1;

  pat = &glob->pattern[glob->size];
  /* patterns 0,1,2,... correspond to size=1,3,5,... */
  pat->type = UPTSet;
  pat->content.Set.size = 0;
  pat->content.Set.ptr_s = 0;
  pat->content.Set.elements = NULL;
  pat->globindex = globindex;

  while(!done) {
    switch (*pattern) {
    case '\0':                  /* URL ended while set was still open */
      return FUNC0("unmatched brace", opos, CURLE_URL_MALFORMAT);

    case '{':
    case '[':                   /* no nested expressions at this time */
      return FUNC0("nested brace", *posp, CURLE_URL_MALFORMAT);

    case '}':                           /* set element completed */
      if(opattern == pattern)
        return FUNC0("empty string within braces", *posp,
                         CURLE_URL_MALFORMAT);

      /* add 1 to size since it'll be incremented below */
      if(FUNC2(amount, pat->content.Set.size + 1))
        return FUNC0("range overflow", 0, CURLE_URL_MALFORMAT);

      /* FALLTHROUGH */
    case ',':

      *buf = '\0';
      if(pat->content.Set.elements) {
        char **new_arr = FUNC3(pat->content.Set.elements,
                                 (pat->content.Set.size + 1) * sizeof(char *));
        if(!new_arr)
          return FUNC0("out of memory", 0, CURLE_OUT_OF_MEMORY);

        pat->content.Set.elements = new_arr;
      }
      else
        pat->content.Set.elements = FUNC1(sizeof(char *));

      if(!pat->content.Set.elements)
        return FUNC0("out of memory", 0, CURLE_OUT_OF_MEMORY);

      pat->content.Set.elements[pat->content.Set.size] =
        FUNC4(glob->glob_buffer);
      if(!pat->content.Set.elements[pat->content.Set.size])
        return FUNC0("out of memory", 0, CURLE_OUT_OF_MEMORY);
      ++pat->content.Set.size;

      if(*pattern == '}') {
        pattern++; /* pass the closing brace */
        done = TRUE;
        continue;
      }

      buf = glob->glob_buffer;
      ++pattern;
      ++(*posp);
      break;

    case ']':                           /* illegal closing bracket */
      return FUNC0("unexpected close bracket", *posp, CURLE_URL_MALFORMAT);

    case '\\':                          /* escaped character, skip '\' */
      if(pattern[1]) {
        ++pattern;
        ++(*posp);
      }
      /* FALLTHROUGH */
    default:
      *buf++ = *pattern++;              /* copy character to set element */
      ++(*posp);
    }
  }

  *patternp = pattern; /* return with the new position */
  return CURLE_OK;
}