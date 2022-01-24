#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buff; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
#define  TK_NAME 130 
#define  TK_NUMBER 129 
#define  TK_STRING 128 
 char const* FUNC0 (TYPE_1__*,int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 

__attribute__((used)) static const char *FUNC3 (LexState *ls, int token) {
  switch (token) {
    case TK_NAME:
    case TK_STRING:
    case TK_NUMBER:
      FUNC2(ls, '\0');
      return FUNC1(ls->buff);
    default:
      return FUNC0(ls, token);
  }
}