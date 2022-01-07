
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attrreference {char* attr_dataoffset; scalar_t__ attr_length; } ;
struct _attrlist_buf {char* varcursor; int fixedcursor; char* allocated; int base; } ;
typedef scalar_t__ ssize_t ;
typedef int ar ;


 int attrlist_pack_fixed (struct _attrlist_buf*,struct attrreference*,int) ;
 int bcopy (void const*,char*,scalar_t__) ;
 scalar_t__ lmin (scalar_t__,char*) ;
 scalar_t__ roundup (uintptr_t,int) ;

__attribute__((used)) static void
attrlist_pack_variable2(struct _attrlist_buf *ab, const void *source, ssize_t count,
  const void *ext, ssize_t extcount)
{

 struct attrreference ar;
 ssize_t fit;






 ar.attr_dataoffset = ab->varcursor - ab->fixedcursor;
 ar.attr_length = count + extcount;
 attrlist_pack_fixed(ab, &ar, sizeof(ar));
 fit = lmin(count, ab->allocated - (ab->varcursor - ab->base));
 if (fit > 0) {
  if (source != ((void*)0)) {
   bcopy(source, ab->varcursor, fit);
  }
  ab->varcursor += fit;
 }


 fit = lmin(extcount, ab->allocated - (ab->varcursor - ab->base));
 if (fit > 0) {

  if (ext != ((void*)0)) {
   bcopy(ext, ab->varcursor, fit);
  }
  ab->varcursor += fit;
 }

 ab->varcursor = (char *)roundup((uintptr_t)ab->varcursor, 4);
}
