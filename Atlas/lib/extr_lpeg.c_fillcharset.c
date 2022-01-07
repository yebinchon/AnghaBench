
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; int aux; } ;
struct TYPE_5__ {int* buff; TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;
typedef int* Charset ;
 int assert (int ) ;
 size_t i ;
 int loopset (size_t,int) ;
 int setchar (int*,int ) ;
 int testchar (int*,char) ;

__attribute__((used)) static void fillcharset (Instruction *p, Charset cs) {
  switch (p[0].i.code) {
    case 128: case 129:
      assert(testchar(p[1].buff, '\0'));

    case 132: case 130: {
      loopset(i, cs[i] = p[1].buff[i]);
      break;
    }
    case 133: case 131: {
      loopset(i, cs[i] = 0);
      setchar(cs, p[0].i.aux);
      break;
    }
    default: {
      loopset(i, cs[i] = 0xff);
      break;
    }
  }
}
