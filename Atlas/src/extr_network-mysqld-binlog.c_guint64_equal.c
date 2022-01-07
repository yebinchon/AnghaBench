
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ guint64 ;
typedef scalar_t__* gconstpointer ;
typedef int gboolean ;



__attribute__((used)) static gboolean guint64_equal(gconstpointer _a, gconstpointer _b) {
 const guint64 *a = _a;
 const guint64 *b = _b;

 return *a == *b;
}
