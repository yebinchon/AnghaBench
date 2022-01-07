
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _attrlist_buf {scalar_t__ fixedcursor; scalar_t__ base; scalar_t__ allocated; } ;
typedef scalar_t__ ssize_t ;


 int bcopy (void*,scalar_t__,scalar_t__) ;
 scalar_t__ lmin (scalar_t__,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,int) ;

__attribute__((used)) static void
attrlist_pack_fixed(struct _attrlist_buf *ab, void *source, ssize_t count)
{




 ssize_t fit;
 fit = lmin(count, ab->allocated - (ab->fixedcursor - ab->base));
 if (fit > 0) {

  bcopy(source, ab->fixedcursor, fit);
 }


 ab->fixedcursor += roundup(count, 4);
}
