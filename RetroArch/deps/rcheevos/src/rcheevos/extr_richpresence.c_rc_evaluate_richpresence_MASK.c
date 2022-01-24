#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* first_display; int /*<<< orphan*/  memrefs; } ;
typedef  TYPE_1__ rc_richpresence_t ;
struct TYPE_7__ {unsigned int value; char* label; struct TYPE_7__* next_item; } ;
typedef  TYPE_2__ rc_richpresence_lookup_item_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_4__* display; int /*<<< orphan*/  trigger; } ;
typedef  TYPE_3__ rc_richpresence_display_t ;
struct TYPE_9__ {int display_type; char* text; struct TYPE_9__* next; int /*<<< orphan*/  value; TYPE_2__* first_lookup_item; } ;
typedef  TYPE_4__ rc_richpresence_display_part_t ;
typedef  int /*<<< orphan*/  rc_peek_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  RC_FORMAT_LOOKUP 129 
#define  RC_FORMAT_STRING 128 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (char*,unsigned int,char*,char*) ; 

int FUNC5(rc_richpresence_t* richpresence, char* buffer, unsigned buffersize, rc_peek_t peek, void* peek_ud, lua_State* L) {
  rc_richpresence_display_t* display;
  rc_richpresence_display_part_t* part;
  rc_richpresence_lookup_item_t* item;
  char* ptr;
  int chars;
  unsigned value;

  FUNC3(richpresence->memrefs, peek, peek_ud);

  ptr = buffer;
  display = richpresence->first_display;
  while (display) {
    if (!display->next || FUNC2(&display->trigger, peek, peek_ud, L)) {
      part = display->display;
      while (part) {
        switch (part->display_type) {
          case RC_FORMAT_STRING:
            chars = FUNC4(ptr, buffersize, "%s", part->text);
            break;

          case RC_FORMAT_LOOKUP:
            value = FUNC0(&part->value, peek, peek_ud, L);
            item = part->first_lookup_item;
            if (!item) {
              chars = 0;
            } else {
              while (item->next_item && item->value != value)
                item = item->next_item;

              chars = FUNC4(ptr, buffersize, "%s", item->label);
            }
            break;

          default:
            value = FUNC0(&part->value, peek, peek_ud, L);
            chars = FUNC1(ptr, buffersize, value, part->display_type);
            break;
        }

        if (chars > 0) {
          ptr += chars;
          buffersize -= chars;
        }

        part = part->next;
      }

      return (int)(ptr - buffer);
    }

    display = display->next;
  }

  buffer[0] = '\0';
  return 0;
}