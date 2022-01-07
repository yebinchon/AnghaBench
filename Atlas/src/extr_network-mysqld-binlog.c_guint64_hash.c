
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef int const guint ;
typedef int* gconstpointer ;



__attribute__((used)) static guint guint64_hash(gconstpointer _key) {
 const guint64 *key = _key;

 return *key & 0xffffffff;
}
