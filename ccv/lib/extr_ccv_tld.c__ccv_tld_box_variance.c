
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int x; int y; int width; int height; } ;
typedef TYPE_2__ ccv_rect_t ;
struct TYPE_7__ {int* i32; scalar_t__* i64; } ;
struct TYPE_9__ {int cols; TYPE_1__ data; int type; } ;
typedef TYPE_3__ ccv_dense_matrix_t ;


 scalar_t__ CCV_32S ;
 scalar_t__ CCV_64S ;
 scalar_t__ CCV_GET_DATA_TYPE (int ) ;
 int assert (int) ;

__attribute__((used)) static double _ccv_tld_box_variance(ccv_dense_matrix_t* sat, ccv_dense_matrix_t* sqsat, ccv_rect_t box)
{
 assert(CCV_GET_DATA_TYPE(sat->type) == CCV_32S);
 assert(CCV_GET_DATA_TYPE(sqsat->type) == CCV_64S);
 int tls = (box.x > 0 && box.y > 0) ? sat->data.i32[box.x - 1 + (box.y - 1) * sat->cols] : 0;
 int trs = (box.y > 0) ? sat->data.i32[box.x + box.width - 1 + (box.y - 1) * sat->cols] : 0;
 int bls = (box.x > 0) ? sat->data.i32[box.x - 1 + (box.y + box.height - 1) * sat->cols] : 0;
 int brs = sat->data.i32[box.x + box.width - 1 + (box.y + box.height - 1) * sat->cols];
 double mean = (double)(brs - trs - bls + tls) / (box.width * box.height);
 int64_t tlsq = (box.x > 0 && box.y > 0) ? sqsat->data.i64[box.x - 1 + (box.y - 1) * sqsat->cols] : 0;
 int64_t trsq = (box.y > 0) ? sqsat->data.i64[box.x + box.width - 1 + (box.y - 1) * sqsat->cols] : 0;
 int64_t blsq = (box.x > 0) ? sqsat->data.i64[box.x - 1 + (box.y + box.height - 1) * sqsat->cols] : 0;
 int64_t brsq = sqsat->data.i64[box.x + box.width - 1 + (box.y + box.height - 1) * sqsat->cols];
 double variance = (double)(brsq - trsq - blsq + tlsq) / (box.width * box.height);
 variance = variance - mean * mean;
 assert(variance >= 0);
 return variance;
}
