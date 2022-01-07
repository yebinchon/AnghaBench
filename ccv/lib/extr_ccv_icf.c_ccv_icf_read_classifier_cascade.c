
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_icf_classifier_cascade_t ;
typedef int FILE ;


 int _ccv_icf_read_classifier_cascade_with_fd (int *,int *) ;
 scalar_t__ ccmalloc (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

ccv_icf_classifier_cascade_t* ccv_icf_read_classifier_cascade(const char* filename)
{
 FILE* r = fopen(filename, "r");
 ccv_icf_classifier_cascade_t* cascade = 0;
 if (r)
 {
  cascade = (ccv_icf_classifier_cascade_t*)ccmalloc(sizeof(ccv_icf_classifier_cascade_t));
  _ccv_icf_read_classifier_cascade_with_fd(r, cascade);
  fclose(r);
 }
 return cascade;
}
