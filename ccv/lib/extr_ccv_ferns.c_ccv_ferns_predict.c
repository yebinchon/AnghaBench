
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {float* posterior; int structs; int posteriors; } ;
typedef TYPE_1__ ccv_ferns_t ;



float ccv_ferns_predict(ccv_ferns_t* ferns, uint32_t* fern)
{
 float votes[] = {0, 0};
 int i;
 float* post = ferns->posterior;
 for (i = 0; i < ferns->structs; i++)
 {
  votes[0] += post[fern[i] * 2];
  votes[1] += post[fern[i] * 2 + 1];
  post += ferns->posteriors * 2;
 }
 return votes[1] - votes[0];
}
