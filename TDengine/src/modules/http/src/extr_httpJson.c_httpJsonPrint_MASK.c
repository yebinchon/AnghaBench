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
struct TYPE_5__ {int size; int lst; } ;
typedef  TYPE_1__ JsonBuf ;

/* Variables and functions */
 int JSON_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,size_t) ; 

void FUNC3(JsonBuf* buf, const char* json, int len) {
  if (len == 0 || len >= JSON_BUFFER_SIZE) {
    return;
  }

  if (len > buf->size) {
    FUNC1(buf, false);
    FUNC3(buf, json, len);
    // buf->slot = json[len - 1];
    return;
  }
  FUNC0(buf, len + 2);
  FUNC2(buf->lst, json, (size_t)len);
  buf->lst += len;
}