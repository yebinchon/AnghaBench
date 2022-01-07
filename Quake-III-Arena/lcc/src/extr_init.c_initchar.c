
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_10__ {int (* defstring ) (int,char*) ;} ;
struct TYPE_7__ {int i; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_8__ {int size; } ;


 TYPE_5__* IR ;
 char gettok () ;
 TYPE_4__* initvalue (int ) ;
 TYPE_3__* inttype ;
 int stub1 (int,char*) ;
 int stub2 (int,char*) ;
 char t ;

__attribute__((used)) static int initchar(int len, Type ty) {
 int n = 0;
 char buf[16], *s = buf;

 do {
  *s++ = initvalue(ty)->u.v.i;
  if (++n%inttype->size == 0) {
   (*IR->defstring)(inttype->size, buf);
   s = buf;
  }
  if (len > 0 && n >= len || t != ',')
   break;
  t = gettok();
 } while (t != '}');
 if (s > buf)
  (*IR->defstring)(s - buf, buf);
 return n;
}
