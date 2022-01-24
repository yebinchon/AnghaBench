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
struct digestdata {void* userhash; void* stale; int /*<<< orphan*/  algo; scalar_t__ nc; int /*<<< orphan*/  algorithm; int /*<<< orphan*/  qop; int /*<<< orphan*/  opaque; int /*<<< orphan*/  realm; int /*<<< orphan*/  cnonce; int /*<<< orphan*/  nonce; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLDIGESTALGO_MD5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 

void FUNC1(struct digestdata *digest)
{
  FUNC0(digest->nonce);
  FUNC0(digest->cnonce);
  FUNC0(digest->realm);
  FUNC0(digest->opaque);
  FUNC0(digest->qop);
  FUNC0(digest->algorithm);

  digest->nc = 0;
  digest->algo = CURLDIGESTALGO_MD5; /* default algorithm */
  digest->stale = FALSE; /* default means normal, not stale */
  digest->userhash = FALSE;
}