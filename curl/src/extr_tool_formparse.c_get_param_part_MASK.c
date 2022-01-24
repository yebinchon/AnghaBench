#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {char* data; } ;
struct OperationConfig {TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/  errors; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_READTEXT ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char**,char**,char) ; 
 int FUNC7 (struct OperationConfig*,char*,int /*<<< orphan*/ *,struct curl_slist**) ; 
 scalar_t__ FUNC8 (struct curl_slist**,char*) ; 
 int FUNC9 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static int FUNC13(struct OperationConfig *config, char endchar,
                          char **str, char **pdata, char **ptype,
                          char **pfilename, char **pencoder,
                          struct curl_slist **pheaders)
{
  char *p = *str;
  char *type = NULL;
  char *filename = NULL;
  char *encoder = NULL;
  char *endpos;
  char *tp;
  char sep;
  char type_major[128] = "";
  char type_minor[128] = "";
  char *endct = NULL;
  struct curl_slist *headers = NULL;

  if(ptype)
    *ptype = NULL;
  if(pfilename)
    *pfilename = NULL;
  if(pheaders)
    *pheaders = NULL;
  if(pencoder)
    *pencoder = NULL;
  while(FUNC0(*p))
    p++;
  tp = p;
  *pdata = FUNC6(&p, &endpos, endchar);
  /* If not quoted, strip trailing spaces. */
  if(*pdata == tp)
    while(endpos > *pdata && FUNC0(endpos[-1]))
      endpos--;
  sep = *p;
  *endpos = '\0';
  while(sep == ';') {
    while(FUNC0(*++p))
      ;

    if(!endct && FUNC1("type=", p)) {
      for(p += 5; FUNC0(*p); p++)
        ;
      /* set type pointer */
      type = p;

      /* verify that this is a fine type specifier */
      if(2 != FUNC9(type, "%127[^/ ]/%127[^;, \n]", type_major, type_minor)) {
        FUNC12(config->global, "Illegally formatted content-type field!\n");
        FUNC2(headers);
        return -1; /* illegal content-type syntax! */
      }

      /* now point beyond the content-type specifier */
      p = type + FUNC11(type_major) + FUNC11(type_minor) + 1;
      for(endct = p; *p && *p != ';' && *p != endchar; p++)
        if(!FUNC0(*p))
          endct = p + 1;
      sep = *p;
    }
    else if(FUNC1("filename=", p)) {
      if(endct) {
        *endct = '\0';
        endct = NULL;
      }
      for(p += 9; FUNC0(*p); p++)
        ;
      tp = p;
      filename = FUNC6(&p, &endpos, endchar);
      /* If not quoted, strip trailing spaces. */
      if(filename == tp)
        while(endpos > filename && FUNC0(endpos[-1]))
          endpos--;
      sep = *p;
      *endpos = '\0';
    }
    else if(FUNC1("headers=", p)) {
      if(endct) {
        *endct = '\0';
        endct = NULL;
      }
      p += 8;
      if(*p == '@' || *p == '<') {
        char *hdrfile;
        FILE *fp;
        /* Read headers from a file. */

        do {
          p++;
        } while(FUNC0(*p));
        tp = p;
        hdrfile = FUNC6(&p, &endpos, endchar);
        /* If not quoted, strip trailing spaces. */
        if(hdrfile == tp)
          while(endpos > hdrfile && FUNC0(endpos[-1]))
            endpos--;
        sep = *p;
        *endpos = '\0';
        fp = FUNC4(hdrfile, FOPEN_READTEXT);
        if(!fp)
          FUNC12(config->global, "Cannot read from %s: %s\n", hdrfile,
                FUNC10(errno));
        else {
          int i = FUNC7(config, hdrfile, fp, &headers);

          FUNC3(fp);
          if(i) {
            FUNC2(headers);
            return -1;
          }
        }
      }
      else {
        char *hdr;

        while(FUNC0(*p))
          p++;
        tp = p;
        hdr = FUNC6(&p, &endpos, endchar);
        /* If not quoted, strip trailing spaces. */
        if(hdr == tp)
          while(endpos > hdr && FUNC0(endpos[-1]))
            endpos--;
        sep = *p;
        *endpos = '\0';
        if(FUNC8(&headers, hdr)) {
          FUNC5(config->global->errors, "Out of memory for field header!\n");
          FUNC2(headers);
          return -1;
        }
      }
    }
    else if(FUNC1("encoder=", p)) {
      if(endct) {
        *endct = '\0';
        endct = NULL;
      }
      for(p += 8; FUNC0(*p); p++)
        ;
      tp = p;
      encoder = FUNC6(&p, &endpos, endchar);
      /* If not quoted, strip trailing spaces. */
      if(encoder == tp)
        while(endpos > encoder && FUNC0(endpos[-1]))
          endpos--;
      sep = *p;
      *endpos = '\0';
    }
    else if(endct) {
      /* This is part of content type. */
      for(endct = p; *p && *p != ';' && *p != endchar; p++)
        if(!FUNC0(*p))
          endct = p + 1;
      sep = *p;
    }
    else {
      /* unknown prefix, skip to next block */
      char *unknown = FUNC6(&p, &endpos, endchar);

      sep = *p;
      *endpos = '\0';
      if(*unknown)
        FUNC12(config->global, "skip unknown form field: %s\n", unknown);
    }
  }

  /* Terminate content type. */
  if(endct)
    *endct = '\0';

  if(ptype)
    *ptype = type;
  else if(type)
    FUNC12(config->global, "Field content type not allowed here: %s\n", type);

  if(pfilename)
    *pfilename = filename;
  else if(filename)
    FUNC12(config->global,
          "Field file name not allowed here: %s\n", filename);

  if(pencoder)
    *pencoder = encoder;
  else if(encoder)
    FUNC12(config->global,
          "Field encoder not allowed here: %s\n", encoder);

  if(pheaders)
    *pheaders = headers;
  else if(headers) {
    FUNC12(config->global,
          "Field headers not allowed here: %s\n", headers->data);
    FUNC2(headers);
  }

  *str = p;
  return sep & 0xFF;
}