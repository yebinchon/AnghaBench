#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* nextpart; struct TYPE_7__* firstpart; } ;
typedef  TYPE_1__ curl_mimepart ;
typedef  TYPE_1__ curl_mime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(curl_mime *mime)
{
  curl_mimepart *part;

  if(mime) {
    FUNC2(mime);  /* Be sure it's not referenced anymore. */
    while(mime->firstpart) {
      part = mime->firstpart;
      mime->firstpart = part->nextpart;
      FUNC0(part);
      FUNC1(part);
    }
    FUNC1(mime);
  }
}