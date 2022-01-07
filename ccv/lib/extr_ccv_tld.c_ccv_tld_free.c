
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ferns; TYPE_3__* top; TYPE_3__** sv; struct TYPE_6__* sfmt; struct TYPE_6__* dsfmt; } ;
typedef TYPE_1__ ccv_tld_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_7__ {int rnum; } ;


 int ccfree (TYPE_1__*) ;
 int ccv_array_free (TYPE_3__*) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;
 int ccv_ferns_free (int ) ;
 int ccv_matrix_free (int *) ;

void ccv_tld_free(ccv_tld_t* tld)
{
 int i;
 ccfree(tld->dsfmt);
 ccfree(tld->sfmt);
 for (i = 0; i < tld->sv[0]->rnum; i++)
  ccv_matrix_free(*(ccv_dense_matrix_t**)ccv_array_get(tld->sv[0], i));
 ccv_array_free(tld->sv[0]);
 for (i = 0; i < tld->sv[1]->rnum; i++)
  ccv_matrix_free(*(ccv_dense_matrix_t**)ccv_array_get(tld->sv[1], i));
 ccv_array_free(tld->sv[1]);
 ccv_array_free(tld->top);
 ccv_ferns_free(tld->ferns);
 ccfree(tld);
}
