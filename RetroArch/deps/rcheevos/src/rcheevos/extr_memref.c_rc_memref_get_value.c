
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* rc_peek_t ) (int ,int,void*) ;
struct TYPE_3__ {int size; int is_bcd; int address; } ;
typedef TYPE_1__ rc_memref_t ;
__attribute__((used)) static unsigned rc_memref_get_value(rc_memref_t* self, rc_peek_t peek, void* ud) {
  unsigned value;

  switch (self->size)
  {
    case 137:
      value = (peek(self->address, 1, ud) >> 0) & 1;
      break;

    case 136:
      value = (peek(self->address, 1, ud) >> 1) & 1;
      break;

    case 135:
      value = (peek(self->address, 1, ud) >> 2) & 1;
      break;

    case 134:
      value = (peek(self->address, 1, ud) >> 3) & 1;
      break;

    case 133:
      value = (peek(self->address, 1, ud) >> 4) & 1;
      break;

    case 132:
      value = (peek(self->address, 1, ud) >> 5) & 1;
      break;

    case 131:
      value = (peek(self->address, 1, ud) >> 6) & 1;
      break;

    case 130:
      value = (peek(self->address, 1, ud) >> 7) & 1;
      break;

    case 128:
      value = peek(self->address, 1, ud) & 0x0f;
      break;

    case 129:
      value = (peek(self->address, 1, ud) >> 4) & 0x0f;
      break;

    case 138:
      value = peek(self->address, 1, ud);

      if (self->is_bcd) {
         value = ((value >> 4) & 0x0f) * 10 + (value & 0x0f);
      }

      break;

    case 141:
      value = peek(self->address, 2, ud);

      if (self->is_bcd) {
         value = ((value >> 12) & 0x0f) * 1000
               + ((value >> 8) & 0x0f) * 100
               + ((value >> 4) & 0x0f) * 10
               + ((value >> 0) & 0x0f) * 1;
      }

      break;

    case 140:
      value = peek(self->address, 4, ud);

      if (self->is_bcd) {
        value = ((value >> 20) & 0x0f) * 100000
              + ((value >> 16) & 0x0f) * 10000
              + ((value >> 12) & 0x0f) * 1000
              + ((value >> 8) & 0x0f) * 100
              + ((value >> 4) & 0x0f) * 10
              + ((value >> 0) & 0x0f) * 1;
      }

      break;

    case 139:
      value = peek(self->address, 4, ud);

      if (self->is_bcd) {
        value = ((value >> 28) & 0x0f) * 10000000
              + ((value >> 24) & 0x0f) * 1000000
              + ((value >> 20) & 0x0f) * 100000
              + ((value >> 16) & 0x0f) * 10000
              + ((value >> 12) & 0x0f) * 1000
              + ((value >> 8) & 0x0f) * 100
              + ((value >> 4) & 0x0f) * 10
              + ((value >> 0) & 0x0f) * 1;
      }

      break;

    default:
      value = 0;
      break;
  }

  return value;
}
