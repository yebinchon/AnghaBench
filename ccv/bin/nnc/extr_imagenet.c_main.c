
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct option {char* member_0; int member_1; int member_3; int member_2; } ;
typedef int ccv_cnnp_dataframe_t ;
struct TYPE_9__ {int filename; } ;
struct TYPE_10__ {TYPE_1__ file; } ;
typedef TYPE_2__ ccv_categorized_t ;
struct TYPE_11__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 TYPE_3__* _array_from_disk_new (char*,char*) ;
 int ccfree (int ) ;
 int ccv_array_free (TYPE_3__* const) ;
 scalar_t__ ccv_array_get (TYPE_3__* const,int) ;
 int ccv_cnnp_dataframe_free (int * const) ;
 int * ccv_cnnp_dataframe_from_array_new (TYPE_3__* const) ;
 int ccv_nnc_init () ;
 int exit (int ) ;
 int getopt_long_only (int,char**,char*,struct option*,int*) ;
 char* optarg ;
 int train_imagenet (int,int * const,int * const,TYPE_3__* const) ;

int main(int argc, char** argv)
{
 ccv_nnc_init();
 static struct option imagenet_options[] = {

  {"help", 0, 0, 0},

  {"train-list", 1, 0, 0},
  {"test-list", 1, 0, 0},

  {"base-dir", 1, 0, 0},
  {0, 0, 0, 0}
 };
 int c;
 char* train_list = 0;
 char* test_list = 0;
 char* base_dir = 0;
 while (getopt_long_only(argc, argv, "", imagenet_options, &c) != -1)
 {
  switch (c)
  {
   case 0:
    exit(0);
   case 1:
    train_list = optarg;
    break;
   case 2:
    test_list = optarg;
    break;
   case 3:
    base_dir = optarg;
    break;
  }
 }
 ccv_array_t* const train_set = _array_from_disk_new(train_list, base_dir);
 ccv_cnnp_dataframe_t* const train_data = ccv_cnnp_dataframe_from_array_new(train_set);
 ccv_array_t* const test_set = _array_from_disk_new(test_list, base_dir);
 ccv_cnnp_dataframe_t* const test_data = ccv_cnnp_dataframe_from_array_new(test_set);
 train_imagenet(128, train_data, test_data, test_set);
 ccv_cnnp_dataframe_free(train_data);
 ccv_cnnp_dataframe_free(test_data);
 int i;
 for (i = 0; i < train_set->rnum; i++)
  ccfree(((ccv_categorized_t*)ccv_array_get(train_set, i))->file.filename);
 ccv_array_free(train_set);
 for (i = 0; i < test_set->rnum; i++)
  ccfree(((ccv_categorized_t*)ccv_array_get(test_set, i))->file.filename);
 ccv_array_free(test_set);
 return 0;
}
