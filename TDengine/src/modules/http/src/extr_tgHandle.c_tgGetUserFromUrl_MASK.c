#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* path; } ;
struct TYPE_7__ {int /*<<< orphan*/  user; TYPE_2__ parser; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ HttpParser ;
typedef  TYPE_3__ HttpContext ;

/* Variables and functions */
 size_t TG_USER_URL_POS ; 
 int TSDB_USER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(HttpContext *pContext) {
  HttpParser *pParser = &pContext->parser;
  if (pParser->path[TG_USER_URL_POS].len > TSDB_USER_LEN - 1 || pParser->path[TG_USER_URL_POS].len <= 0) {
    return false;
  }

  FUNC0(pContext->user, pParser->path[TG_USER_URL_POS].pos);
  return true;
}