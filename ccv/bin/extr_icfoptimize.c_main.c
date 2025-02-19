
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct option {char* member_0; int member_1; int member_3; int member_2; } ;
typedef int ccv_icf_classifier_cascade_t ;
struct TYPE_11__ {int yaw; int pitch; int roll; int b; int a; int y; int x; } ;
struct TYPE_10__ {char* filename; TYPE_2__ pose; } ;
typedef TYPE_1__ ccv_file_info_t ;
typedef TYPE_2__ ccv_decimal_pose_t ;
struct TYPE_12__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int assert (int) ;
 double atof (char*) ;
 scalar_t__ ccmalloc (int) ;
 int ccv_array_free (TYPE_3__*) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;
 TYPE_3__* ccv_array_new (int,int,int ) ;
 int ccv_array_push (TYPE_3__*,TYPE_1__*) ;
 int ccv_disable_cache () ;
 int ccv_enable_cache (int) ;
 int ccv_icf_classifier_cascade_soft (int *,TYPE_3__*,double) ;
 int * ccv_icf_read_classifier_cascade (char*) ;
 int ccv_icf_write_classifier_cascade (int *,char*) ;
 int exit_with_help () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ fscanf (int *,char*,char*,int *,int *,int *,int *,int *,int *,int *) ;
 int getopt_long_only (int,char**,char*,struct option*,int*) ;
 scalar_t__ malloc (int) ;
 char* optarg ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

int main(int argc, char** argv)
{
 static struct option icf_options[] = {

  {"help", 0, 0, 0},

  {"positive-list", 1, 0, 0},
  {"classifier-cascade", 1, 0, 0},
  {"acceptance", 1, 0, 0},

  {"base-dir", 1, 0, 0},
  {0, 0, 0, 0}
 };
 char* positive_list = 0;
 char* classifier_cascade = 0;
 char* base_dir = 0;
 double acceptance = 0;
 int i, k;
 while (getopt_long_only(argc, argv, "", icf_options, &k) != -1)
 {
  switch (k)
  {
   case 0:
    exit_with_help();
   case 1:
    positive_list = optarg;
    break;
   case 2:
    classifier_cascade = optarg;
    break;
   case 3:
    acceptance = atof(optarg);
    break;
   case 4:
    base_dir = optarg;
    break;
  }
 }
 assert(positive_list != 0);
 assert(classifier_cascade != 0);
 ccv_enable_cache(512 * 1024 * 1024);
 FILE* r0 = fopen(positive_list, "r");
 assert(r0 && "positive-list doesn't exists");
 char* file = (char*)malloc(1024);
 ccv_decimal_pose_t pose;
 ccv_array_t* posfiles = ccv_array_new(sizeof(ccv_file_info_t), 32, 0);
 int dirlen = (base_dir != 0) ? strlen(base_dir) + 1 : 0;

 while (fscanf(r0, "%s %f %f %f %f %f %f %f", file, &pose.x, &pose.y, &pose.a, &pose.b, &pose.roll, &pose.pitch, &pose.yaw) != EOF)
 {
  ccv_file_info_t file_info;
  file_info.filename = (char*)ccmalloc(1024);
  if (base_dir != 0)
  {
   strncpy(file_info.filename, base_dir, 1024);
   file_info.filename[dirlen - 1] = '/';
  }
  strncpy(file_info.filename + dirlen, file, 1024 - dirlen);

  file_info.pose = pose;
  ccv_array_push(posfiles, &file_info);
 }
 fclose(r0);
 free(file);
 ccv_icf_classifier_cascade_t* cascade = ccv_icf_read_classifier_cascade(classifier_cascade);
 assert(cascade && "classifier cascade doesn't exists");
 ccv_icf_classifier_cascade_soft(cascade, posfiles, acceptance);
 ccv_icf_write_classifier_cascade(cascade, classifier_cascade);
 for (i = 0; i < posfiles->rnum; i++)
 {
  ccv_file_info_t* file_info = (ccv_file_info_t*)ccv_array_get(posfiles, i);
  free(file_info->filename);
 }
 ccv_array_free(posfiles);
 ccv_disable_cache();
 return 0;
}
