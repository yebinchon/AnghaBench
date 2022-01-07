
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* cnum; int* rnum; float* posterior; int structs; int posteriors; } ;
typedef TYPE_1__ ccv_ferns_t ;


 int assert (int) ;
 float logf (float) ;

void ccv_ferns_correct(ccv_ferns_t* ferns, uint32_t* fern, int c, int repeat)
{
 assert(c == 0 || c == 1);
 assert(repeat >= 0);
 repeat += 1;
 int i;
 int* cnum = ferns->cnum;
 int* rnum = ferns->rnum;
 float* post = ferns->posterior;
 cnum[c] += repeat;
 float cw[] = {
  1.0 / (cnum[0] + 1),
  1.0 / (cnum[1] + 1),
 };
 for (i = 0; i < ferns->structs; i++)
 {
  uint32_t k = fern[i];
  rnum[k * 2 + c] += repeat;

  float rcw[] = {
   rnum[k * 2] * cw[0] + 1e-5,
   rnum[k * 2 + 1] * cw[1] + 1e-5,
  };
  post[k * 2] = logf(rcw[0] / (rcw[0] + rcw[1]));
  post[k * 2 + 1] = logf(rcw[1] / (rcw[0] + rcw[1]));
  rnum += ferns->posteriors * 2;
  post += ferns->posteriors * 2;
 }
}
