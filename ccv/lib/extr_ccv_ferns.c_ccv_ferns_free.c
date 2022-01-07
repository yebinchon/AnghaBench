
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_ferns_t ;


 int ccfree (int *) ;

void ccv_ferns_free(ccv_ferns_t* ferns)
{
 ccfree(ferns);
}
