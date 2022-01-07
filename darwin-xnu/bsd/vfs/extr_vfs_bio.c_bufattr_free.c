
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bufattr_t ;


 int FREE (scalar_t__,int ) ;
 int M_TEMP ;

void
bufattr_free(bufattr_t bap) {
 if (bap)
  FREE(bap, M_TEMP);
}
