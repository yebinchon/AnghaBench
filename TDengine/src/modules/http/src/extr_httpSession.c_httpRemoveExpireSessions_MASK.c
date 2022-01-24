#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  serverMutex; int /*<<< orphan*/  pSessionHash; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ HttpSession ;
typedef  TYPE_2__ HttpServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  httpSessionExpired ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(HttpServer *pServer) {
  int expiredNum = 0;
  do {
    FUNC1(&pServer->serverMutex);

    HttpSession *pSession = (HttpSession *)FUNC4(pServer->pSessionHash, httpSessionExpired);
    if (pSession == NULL) {
      FUNC2(&pServer->serverMutex);
      break;
    }

    FUNC0((char *)pSession);
    FUNC3(pServer->pSessionHash, pSession->id, pSession);

    FUNC2(&pServer->serverMutex);

    if (++expiredNum > 10) {
      break;
    }
  } while (true);
}