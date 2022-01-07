
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int octave; int count; int grayscale; scalar_t__ cascade; } ;
typedef TYPE_1__ ccv_icf_multiscale_classifier_cascade_t ;
typedef int FILE ;


 int _ccv_icf_write_classifier_cascade_with_fd (scalar_t__,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int,int,int) ;
 int snprintf (char*,int,char*,char const*,...) ;

void ccv_icf_write_multiscale_classifier_cascade(ccv_icf_multiscale_classifier_cascade_t* classifier, const char* directory)
{
 char filename[1024];
 snprintf(filename, 1024, "%s/multiscale", directory);
 FILE* w = fopen(filename, "w+");
 fprintf(w, "%d %d %d\n", classifier->octave, classifier->count, classifier->grayscale);
 fclose(w);
 int i;
 for (i = 0; i < classifier->count; i++)
 {
  snprintf(filename, 1024, "%s/cascade-%d", directory, i + 1);
  w = fopen(filename, "w+");
  _ccv_icf_write_classifier_cascade_with_fd(classifier->cascade + i, w);
  fclose(w);
 }
}
