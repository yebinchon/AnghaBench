
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _attrlist_buf {int dummy; } ;
typedef int ssize_t ;


 int attrlist_pack_variable2 (struct _attrlist_buf*,void const*,int ,int *,int ) ;

__attribute__((used)) static void
attrlist_pack_variable(struct _attrlist_buf *ab, const void *source, ssize_t count)
{
 attrlist_pack_variable2(ab, source, count, ((void*)0), 0);
}
