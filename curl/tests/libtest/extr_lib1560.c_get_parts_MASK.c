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
struct TYPE_2__ {char* in; scalar_t__ ucode; int /*<<< orphan*/  getflags; int /*<<< orphan*/  out; int /*<<< orphan*/  urlflags; } ;
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  CURLUPART_URL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int,scalar_t__) ; 
 TYPE_1__* get_parts_list ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(void)
{
  int i;
  int error = 0;
  for(i = 0; get_parts_list[i].in && !error; i++) {
    CURLUcode rc;
    CURLU *urlp = FUNC1();
    if(!urlp) {
      error++;
      break;
    }
    rc = FUNC3(urlp, CURLUPART_URL,
                      get_parts_list[i].in,
                      get_parts_list[i].urlflags);
    if(rc != get_parts_list[i].ucode) {
      FUNC4(stderr, "Get parts\nin: %s\nreturned %d (expected %ld)\n",
              get_parts_list[i].in, (int)rc, get_parts_list[i].ucode);
      error++;
    }
    else if(get_parts_list[i].ucode) {
      /* the expected error happened */
    }
    else if(FUNC0(urlp, get_parts_list[i].in, get_parts_list[i].out,
                       get_parts_list[i].getflags))
      error++;
    FUNC2(urlp);
  }
  return error;
}