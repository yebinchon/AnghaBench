
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int typeSpool; int typeSpoolLength; scalar_t__ argumentSpool; scalar_t__ args; int pout; } ;
typedef TYPE_1__ CodingSpool ;


 int bytestream_put_buffer (int ,scalar_t__,scalar_t__) ;
 int bytestream_put_le16 (int ,int) ;

__attribute__((used)) static void write_typecode(CodingSpool *s, uint8_t type)
{
    s->typeSpool |= (type & 3) << (14 - s->typeSpoolLength);
    s->typeSpoolLength += 2;
    if (s->typeSpoolLength == 16) {
        bytestream_put_le16(s->pout, s->typeSpool);
        bytestream_put_buffer(s->pout, s->argumentSpool,
                              s->args - s->argumentSpool);
        s->typeSpoolLength = 0;
        s->typeSpool = 0;
        s->args = s->argumentSpool;
    }
}
