
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* u8; } ;
struct TYPE_6__ {int step; int rows; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;
typedef int FILE ;


 int SEEK_SET ;
 TYPE_2__* ccv_dense_matrix_new (int,int,int,int ,int ) ;
 int fread (int*,int,int,int *) ;
 int fseek (int *,int,int ) ;

__attribute__((used)) static void _ccv_read_binary_fd(FILE* in, ccv_dense_matrix_t** x, int type)
{
 fseek(in, 8, SEEK_SET);
 fread(&type, 1, 4, in);
 int rows, cols;
 fread(&rows, 1, 4, in);
 fread(&cols, 1, 4, in);
 *x = ccv_dense_matrix_new(rows, cols, type, 0, 0);
 fread((*x)->data.u8, 1, (*x)->step * (*x)->rows, in);
}
