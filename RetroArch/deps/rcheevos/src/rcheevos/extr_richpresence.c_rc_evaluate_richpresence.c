
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* first_display; int memrefs; } ;
typedef TYPE_1__ rc_richpresence_t ;
struct TYPE_7__ {unsigned int value; char* label; struct TYPE_7__* next_item; } ;
typedef TYPE_2__ rc_richpresence_lookup_item_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_4__* display; int trigger; } ;
typedef TYPE_3__ rc_richpresence_display_t ;
struct TYPE_9__ {int display_type; char* text; struct TYPE_9__* next; int value; TYPE_2__* first_lookup_item; } ;
typedef TYPE_4__ rc_richpresence_display_part_t ;
typedef int rc_peek_t ;
typedef int lua_State ;




 unsigned int rc_evaluate_value (int *,int ,void*,int *) ;
 int rc_format_value (char*,unsigned int,unsigned int,int) ;
 scalar_t__ rc_test_trigger (int *,int ,void*,int *) ;
 int rc_update_memref_values (int ,int ,void*) ;
 int snprintf (char*,unsigned int,char*,char*) ;

int rc_evaluate_richpresence(rc_richpresence_t* richpresence, char* buffer, unsigned buffersize, rc_peek_t peek, void* peek_ud, lua_State* L) {
  rc_richpresence_display_t* display;
  rc_richpresence_display_part_t* part;
  rc_richpresence_lookup_item_t* item;
  char* ptr;
  int chars;
  unsigned value;

  rc_update_memref_values(richpresence->memrefs, peek, peek_ud);

  ptr = buffer;
  display = richpresence->first_display;
  while (display) {
    if (!display->next || rc_test_trigger(&display->trigger, peek, peek_ud, L)) {
      part = display->display;
      while (part) {
        switch (part->display_type) {
          case 128:
            chars = snprintf(ptr, buffersize, "%s", part->text);
            break;

          case 129:
            value = rc_evaluate_value(&part->value, peek, peek_ud, L);
            item = part->first_lookup_item;
            if (!item) {
              chars = 0;
            } else {
              while (item->next_item && item->value != value)
                item = item->next_item;

              chars = snprintf(ptr, buffersize, "%s", item->label);
            }
            break;

          default:
            value = rc_evaluate_value(&part->value, peek, peek_ud, L);
            chars = rc_format_value(ptr, buffersize, value, part->display_type);
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
