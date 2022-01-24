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
struct ssl_state {int /*<<< orphan*/  ca; int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  conf; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssl_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void *state_data)
{
   struct ssl_state *state = (struct ssl_state*)state_data;

   if (!state)
      return;

   FUNC4(&state->ctx);
   FUNC3(&state->conf);
   FUNC1(&state->ctr_drbg);
   FUNC2(&state->entropy);
#if defined(MBEDTLS_X509_CRT_PARSE_C)
   mbedtls_x509_crt_free(&state->ca);
#endif

   FUNC0(state);
}