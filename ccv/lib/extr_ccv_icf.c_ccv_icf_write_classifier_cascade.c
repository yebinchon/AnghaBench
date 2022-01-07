
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_icf_classifier_cascade_t ;
typedef int FILE ;


 int _ccv_icf_write_classifier_cascade_with_fd (int *,int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

void ccv_icf_write_classifier_cascade(ccv_icf_classifier_cascade_t* cascade, const char* filename)
{
 FILE* w = fopen(filename, "w+");
 if (w)
 {
  _ccv_icf_write_classifier_cascade_with_fd(cascade, w);
  fclose(w);
 }
}
