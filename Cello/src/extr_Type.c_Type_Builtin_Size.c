
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Type {int inst; } ;


 int CELLO_CACHE_NUM ;

__attribute__((used)) static size_t Type_Builtin_Size(struct Type* t) {
  return (size_t)t[(CELLO_CACHE_NUM / 3)+1].inst;
}
