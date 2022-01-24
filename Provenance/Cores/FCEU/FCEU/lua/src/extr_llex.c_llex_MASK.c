#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_24__ {TYPE_2__* ts; } ;
struct TYPE_22__ {int /*<<< orphan*/  reserved; } ;
struct TYPE_23__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;
typedef  TYPE_3__ SemInfo ;
typedef  TYPE_4__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int FIRST_RESERVED ; 
 int TK_CONCAT ; 
 int TK_DOTS ; 
 int TK_EOS ; 
 int TK_EQ ; 
 int TK_GE ; 
 int TK_LE ; 
 int TK_NAME ; 
 int TK_NE ; 
 int TK_NUMBER ; 
 int TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int) ; 
 TYPE_2__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int FUNC18 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC19 (LexState *ls, SemInfo *seminfo) {
  FUNC11(ls->buff);
  for (;;) {
    switch (ls->current) {
      case '\n':
      case '\r': {
        FUNC2(ls);
        continue;
      }
      case '-': {
        FUNC13(ls);
        if (ls->current != '-') return '-';
        /* else is a comment */
        FUNC13(ls);
        if (ls->current == '[') {
          int sep = FUNC18(ls);
          FUNC11(ls->buff);  /* `skip_sep' may dirty the buffer */
          if (sep >= 0) {
            FUNC14(ls, NULL, sep);  /* long comment */
            FUNC11(ls->buff);
            continue;
          }
        }
        /* else short comment */
        while (!FUNC1(ls) && ls->current != EOZ)
          FUNC13(ls);
        continue;
      }
      case '[': {
        int sep = FUNC18(ls);
        if (sep >= 0) {
          FUNC14(ls, seminfo, sep);
          return TK_STRING;
        }
        else if (sep == -1) return '[';
        else FUNC7(ls, "invalid long string delimiter", TK_STRING);
      }
      case '=': {
        FUNC13(ls);
        if (ls->current != '=') return '=';
        else { FUNC13(ls); return TK_EQ; }
      }
      case '<': {
        FUNC13(ls);
        if (ls->current != '=') return '<';
        else { FUNC13(ls); return TK_LE; }
      }
      case '>': {
        FUNC13(ls);
        if (ls->current != '=') return '>';
        else { FUNC13(ls); return TK_GE; }
      }
      case '~': {
        FUNC13(ls);
        if (ls->current != '=') return '~';
        else { FUNC13(ls); return TK_NE; }
      }
      case '"':
      case '\'': {
        FUNC16(ls, ls->current, seminfo);
        return TK_STRING;
      }
      case '.': {
        FUNC17(ls);
        if (FUNC0(ls, ".")) {
          if (FUNC0(ls, "."))
            return TK_DOTS;   /* ... */
          else return TK_CONCAT;   /* .. */
        }
        else if (!FUNC5(ls->current)) return '.';
        else {
          FUNC15(ls, seminfo);
          return TK_NUMBER;
        }
      }
      case EOZ: {
        return TK_EOS;
      }
      default: {
        if (FUNC6(ls->current)) {
          FUNC12(!FUNC1(ls));
          FUNC13(ls);
          continue;
        }
        else if (FUNC5(ls->current)) {
          FUNC15(ls, seminfo);
          return TK_NUMBER;
        }
        else if (FUNC4(ls->current) || ls->current == '_') {
          /* identifier or reserved word */
          TString *ts;
          do {
            FUNC17(ls);
          } while (FUNC3(ls->current) || ls->current == '_');
          ts = FUNC8(ls, FUNC9(ls->buff),
                                  FUNC10(ls->buff));
          if (ts->tsv.reserved > 0)  /* reserved word? */
            return ts->tsv.reserved - 1 + FIRST_RESERVED;
          else {
            seminfo->ts = ts;
            return TK_NAME;
          }
        }
        else {
          int c = ls->current;
          FUNC13(ls);
          return c;  /* single-char tokens (+ - / ...) */
        }
      }
    }
  }
}