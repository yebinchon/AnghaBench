
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_file_info_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_3__ {int c; int file; int type; int * matrix; } ;
typedef TYPE_1__ ccv_categorized_t ;


 int CCV_CATEGORIZED_DENSE_MATRIX ;
 int CCV_CATEGORIZED_FILE ;
 int assert (int) ;

__attribute__((used)) inline static ccv_categorized_t ccv_categorized(int c, ccv_dense_matrix_t* matrix, ccv_file_info_t* file)
{
 assert((matrix && !file) || (!matrix && file));
 ccv_categorized_t categorized;
 categorized.c = c;
 if (matrix)
  categorized.type = CCV_CATEGORIZED_DENSE_MATRIX, categorized.matrix = matrix;
 else
  categorized.type = CCV_CATEGORIZED_FILE, categorized.file = *file;
 return categorized;
}
