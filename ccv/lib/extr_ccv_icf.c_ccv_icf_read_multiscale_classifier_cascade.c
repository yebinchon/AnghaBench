
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octave; int count; int grayscale; int * cascade; int type; } ;
typedef TYPE_1__ ccv_icf_multiscale_classifier_cascade_t ;
typedef int ccv_icf_classifier_cascade_t ;
typedef int FILE ;


 int CCV_ICF_CLASSIFIER_TYPE_B ;
 int _ccv_icf_read_classifier_cascade_with_fd (int *,int *) ;
 scalar_t__ ccmalloc (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*,int*,int*) ;
 int snprintf (char*,int,char*,char const*,...) ;

ccv_icf_multiscale_classifier_cascade_t* ccv_icf_read_multiscale_classifier_cascade(const char* directory)
{
 char filename[1024];
 snprintf(filename, 1024, "%s/multiscale", directory);
 FILE* r = fopen(filename, "r");
 if (r)
 {
  int octave = 0, count = 0, grayscale = 0;
  fscanf(r, "%d %d %d", &octave, &count, &grayscale);
  fclose(r);
  ccv_icf_multiscale_classifier_cascade_t* classifier = (ccv_icf_multiscale_classifier_cascade_t*)ccmalloc(sizeof(ccv_icf_multiscale_classifier_cascade_t) + sizeof(ccv_icf_classifier_cascade_t) * count);
  classifier->type = CCV_ICF_CLASSIFIER_TYPE_B;
  classifier->octave = octave;
  classifier->count = count;
  classifier->grayscale = grayscale;
  classifier->cascade = (ccv_icf_classifier_cascade_t*)(classifier + 1);
  int i;
  for (i = 0; i < count; i++)
  {
   snprintf(filename, 1024, "%s/cascade-%d", directory, i + 1);
   r = fopen(filename, "r");
   if (r)
   {
    ccv_icf_classifier_cascade_t* cascade = classifier->cascade + i;
    _ccv_icf_read_classifier_cascade_with_fd(r, cascade);
    fclose(r);
   }
  }
  return classifier;
 }
 return 0;
}
