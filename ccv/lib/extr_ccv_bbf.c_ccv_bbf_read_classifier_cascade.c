
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_bbf_stage_classifier_t ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_5__ {int count; int * stage_classifier; TYPE_1__ size; } ;
typedef TYPE_2__ ccv_bbf_classifier_cascade_t ;
typedef int FILE ;


 scalar_t__ _ccv_read_bbf_stage_classifier (char*,int *) ;
 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*,int *,int *) ;
 int sprintf (char*,char*,char const*,...) ;

ccv_bbf_classifier_cascade_t* ccv_bbf_read_classifier_cascade(const char* directory)
{
 char buf[1024];
 sprintf(buf, "%s/cascade.txt", directory);
 int s, i;
 FILE* r = fopen(buf, "r");
 if (r == 0)
  return 0;
 ccv_bbf_classifier_cascade_t* cascade = (ccv_bbf_classifier_cascade_t*)ccmalloc(sizeof(ccv_bbf_classifier_cascade_t));
 s = fscanf(r, "%d %d %d", &cascade->count, &cascade->size.width, &cascade->size.height);
 assert(s > 0);
 cascade->stage_classifier = (ccv_bbf_stage_classifier_t*)ccmalloc(cascade->count * sizeof(ccv_bbf_stage_classifier_t));
 for (i = 0; i < cascade->count; i++)
 {
  sprintf(buf, "%s/stage-%d.txt", directory, i);
  if (_ccv_read_bbf_stage_classifier(buf, &cascade->stage_classifier[i]) < 0)
  {
   cascade->count = i;
   break;
  }
 }
 fclose(r);
 return cascade;
}
