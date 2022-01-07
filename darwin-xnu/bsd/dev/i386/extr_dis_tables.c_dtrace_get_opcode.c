
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int d86_len; int d86_error; int (* d86_get_byte ) (int ) ;int* d86_bytes; int d86_data; } ;
typedef TYPE_1__ dis86_t ;


 int stub1 (int ) ;

__attribute__((used)) static int
dtrace_get_opcode(dis86_t *x, uint_t *high, uint_t *low)
{
 int byte;





 if (x->d86_len >= 15)
  return (x->d86_error = 1);

 if (x->d86_error)
  return (1);
 byte = x->d86_get_byte(x->d86_data);
 if (byte < 0)
  return (x->d86_error = 1);
 x->d86_bytes[x->d86_len++] = byte;
 *low = byte & 0xf;
 *high = byte >> 4 & 0xf;
 return (0);
}
