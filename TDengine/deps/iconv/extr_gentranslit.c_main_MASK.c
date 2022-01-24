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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10 (int argc, char *argv[])
{
  unsigned int data[0x100000];
  int uni2index[0x110000];
  int index;

  if (argc != 1)
    FUNC1(1);

  FUNC6("/*\n");
  FUNC6(" * Copyright (C) 1999-2003 Free Software Foundation, Inc.\n");
  FUNC6(" * This file is part of the GNU LIBICONV Library.\n");
  FUNC6(" *\n");
  FUNC6(" * The GNU LIBICONV Library is free software; you can redistribute it\n");
  FUNC6(" * and/or modify it under the terms of the GNU Library General Public\n");
  FUNC6(" * License as published by the Free Software Foundation; either version 2\n");
  FUNC6(" * of the License, or (at your option) any later version.\n");
  FUNC6(" *\n");
  FUNC6(" * The GNU LIBICONV Library is distributed in the hope that it will be\n");
  FUNC6(" * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of\n");
  FUNC6(" * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU\n");
  FUNC6(" * Library General Public License for more details.\n");
  FUNC6(" *\n");
  FUNC6(" * You should have received a copy of the GNU Library General Public\n");
  FUNC6(" * License along with the GNU LIBICONV Library; see the file COPYING.LIB.\n");
  FUNC6(" * If not, write to the Free Software Foundation, Inc., 51 Franklin Street,\n");
  FUNC6(" * Fifth Floor, Boston, MA 02110-1301, USA.\n");
  FUNC6(" */\n");
  FUNC6("\n");
  FUNC6("/*\n");
  FUNC6(" * Transliteration table\n");
  FUNC6(" */\n");
  FUNC6("\n");
  {
    int c;
    int j;
    for (j = 0; j < 0x110000; j++)
      uni2index[j] = -1;
    index = 0;
    for (;;) {
      c = FUNC4(stdin);
      if (c == EOF)
        break;
      if (c == '#') {
        do { c = FUNC4(stdin); } while (!(c == EOF || c == '\n'));
        continue;
      }
      FUNC9(c,stdin);
      if (FUNC7("%x",&j) != 1)
        FUNC1(1);
      c = FUNC4(stdin);
      if (c != '\t')
        FUNC1(1);
      for (;;) {
        c = FUNC4(stdin);
        if (c == EOF || c == '\n')
          FUNC1(1);
        if (c == '\t')
          break;
        if (uni2index[j] < 0) {
          uni2index[j] = index;
          data[index++] = 0;
        }
        if (c >= 0x80) {
          /* Finish reading an UTF-8 character. */
          if (c < 0xc0)
            FUNC1(1);
          else {
            unsigned int i = (c < 0xe0 ? 2 : c < 0xf0 ? 3 : c < 0xf8 ? 4 : c < 0xfc ? 5 : 6);
            c &= (1 << (8-i)) - 1;
            while (--i > 0) {
              int cc = FUNC4(stdin);
              if (!(cc >= 0x80 && cc < 0xc0))
                FUNC1(1);
              c <<= 6; c |= (cc & 0x3f);
            }
          }
        }
        data[index++] = (unsigned int) c;
      }
      if (uni2index[j] >= 0)
        data[uni2index[j]] = index - uni2index[j] - 1;
      do { c = FUNC4(stdin); } while (!(c == EOF || c == '\n'));
    }
  }
  FUNC6("static const unsigned int translit_data[%d] = {",index);
  {
    int i;
    for (i = 0; i < index; i++) {
      if (data[i] < 32)
        FUNC6("\n %3d,",data[i]);
      else if (data[i] == '\'')
        FUNC6("'\\'',");
      else if (data[i] == '\\')
        FUNC6("'\\\\',");
      else if (data[i] < 127)
        FUNC6(" '%c',",data[i]);
      else if (data[i] < 256)
        FUNC6("0x%02X,",data[i]);
      else
        FUNC6("0x%04X,",data[i]);
    }
    FUNC6("\n};\n");
  }
  FUNC6("\n");
  {
    bool pages[0x1100];
    int line[0x22000];
    int tableno;
    struct { int minline; int maxline; int usecount; const char* suffix; } tables[0x2000];
    int i, j, p, j1, j2, t;

    for (p = 0; p < 0x1100; p++)
      pages[p] = false;
    for (j = 0; j < 0x110000; j++)
      if (uni2index[j] >= 0)
        pages[j>>8] = true;
    for (j1 = 0; j1 < 0x22000; j1++) {
      bool all_invalid = true;
      for (j2 = 0; j2 < 8; j2++) {
        j = 8*j1+j2;
        if (uni2index[j] >= 0)
          all_invalid = false;
      }
      if (all_invalid)
        line[j1] = -1;
      else
        line[j1] = 0;
    }
    tableno = 0;
    for (j1 = 0; j1 < 0x22000; j1++) {
      if (line[j1] >= 0) {
        if (tableno > 0
            && ((j1 > 0 && line[j1-1] == tableno-1)
                || ((tables[tableno-1].maxline >> 5) == (j1 >> 5)
                    && j1 - tables[tableno-1].maxline <= 8))) {
          line[j1] = tableno-1;
          tables[tableno-1].maxline = j1;
        } else {
          tableno++;
          line[j1] = tableno-1;
          tables[tableno-1].minline = tables[tableno-1].maxline = j1;
        }
      }
    }
    for (t = 0; t < tableno; t++) {
      tables[t].usecount = 0;
      j1 = 8*tables[t].minline;
      j2 = 8*(tables[t].maxline+1);
      for (j = j1; j < j2; j++)
        if (uni2index[j] >= 0)
          tables[t].usecount++;
    }
    for (t = 0, p = -1, i = 0; t < tableno; t++) {
      if (tables[t].usecount > 1) {
        char* s;
        if (p == tables[t].minline >> 5) {
          s = (char*) FUNC5(5+1);
          FUNC8(s, "%02x_%d", p, ++i);
        } else {
          p = tables[t].minline >> 5;
          s = (char*) FUNC5(2+1);
          FUNC8(s, "%02x", p);
        }
        tables[t].suffix = s;
      } else
        tables[t].suffix = NULL;
    }
    {
      p = -1;
      for (t = 0; t < tableno; t++)
        if (tables[t].usecount > 1) {
          p = 0;
          FUNC6("static const short translit_page%s[%d] = {\n", tables[t].suffix, 8*(tables[t].maxline-tables[t].minline+1));
          for (j1 = tables[t].minline; j1 <= tables[t].maxline; j1++) {
            if ((j1 % 0x20) == 0 && j1 > tables[t].minline)
              FUNC6("  /* 0x%04x */\n", 8*j1);
            FUNC6(" ");
            for (j2 = 0; j2 < 8; j2++) {
              j = 8*j1+j2;
              FUNC6(" %4d,", uni2index[j]);
            }
            FUNC6(" /* 0x%02x-0x%02x */\n", 8*(j1 % 0x20), 8*(j1 % 0x20)+7);
          }
          FUNC6("};\n");
        }
      if (p >= 0)
        FUNC6("\n");
    }
    FUNC6("#define translit_index(wc) \\\n  (");
    for (j1 = 0; j1 < 0x22000;) {
      t = line[j1];
      for (j2 = j1; j2 < 0x22000 && line[j2] == t; j2++);
      if (t >= 0) {
        if (j1 != tables[t].minline) FUNC0();
        if (j2 > tables[t].maxline+1) FUNC0();
        j2 = tables[t].maxline+1;
      }
      if (t == -1) {
      } else {
        if (t >= 0 && tables[t].usecount == 0) FUNC0();
        if (t >= 0 && tables[t].usecount == 1) {
          if (j2 != j1+1) FUNC0();
          for (j = 8*j1; j < 8*j2; j++)
            if (uni2index[j] >= 0) {
              FUNC6("wc == 0x%04x ? %d", j, uni2index[j]);
              break;
            }
        } else {
          if (j1 == 0) {
            FUNC6("wc < 0x%04x", 8*j2);
          } else {
            FUNC6("wc >= 0x%04x && wc < 0x%04x", 8*j1, 8*j2);
          }
          FUNC6(" ? translit_page%s[wc", tables[t].suffix);
          if (tables[t].minline > 0)
            FUNC6("-0x%04x", 8*j1);
          FUNC6("]");
        }
        FUNC6(" : \\\n   ");
      }
      j1 = j2;
    }
    FUNC6("-1)\n");
  }

  if (FUNC3(stdout) || FUNC2(stdout))
    FUNC1(1);
  FUNC1(0);
}