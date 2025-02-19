
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
typedef int feature_params_qs ;
typedef int classifier_params_qs ;
struct TYPE_5__ {int* sx; int* sy; int* dx; int* dy; float bias; int w; } ;
typedef TYPE_1__ ccv_scd_stump_feature_t ;
struct TYPE_6__ {int count; float threshold; TYPE_1__* features; } ;
typedef TYPE_2__ ccv_scd_stump_classifier_t ;
struct TYPE_7__ {int count; TYPE_2__* classifiers; int size; int margin; } ;
typedef TYPE_3__ ccv_scd_classifier_cascade_t ;
typedef int cascade_params_qs ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 scalar_t__ cccalloc (int,int) ;
 scalar_t__ ccmalloc (int) ;
 int ccv_margin (int,int,int,int) ;
 int ccv_size (int,int) ;
 int memcpy (int ,void const*,int) ;
 int sqlite3_close (int *) ;
 void* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 scalar_t__ sqlite3_column_double (int *,int) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_open (char const*,int **) ;
 scalar_t__ sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

ccv_scd_classifier_cascade_t* ccv_scd_classifier_cascade_read(const char* filename)
{
 int i;
 sqlite3* db = 0;
 ccv_scd_classifier_cascade_t* cascade = 0;
 if (SQLITE_OK == sqlite3_open(filename, &db))
 {
  const char cascade_params_qs[] =
   "SELECT count, "
   "margin_left, margin_top, margin_right, margin_bottom, "
   "size_width, size_height FROM cascade_params WHERE id = 0;";
  sqlite3_stmt* cascade_params_stmt = 0;
  if (SQLITE_OK == sqlite3_prepare_v2(db, cascade_params_qs, sizeof(cascade_params_qs), &cascade_params_stmt, 0))
  {
   if (sqlite3_step(cascade_params_stmt) == SQLITE_ROW)
   {
    cascade = (ccv_scd_classifier_cascade_t*)ccmalloc(sizeof(ccv_scd_classifier_cascade_t));
    cascade->count = sqlite3_column_int(cascade_params_stmt, 0);
    cascade->classifiers = (ccv_scd_stump_classifier_t*)cccalloc(cascade->count, sizeof(ccv_scd_stump_classifier_t));
    cascade->margin = ccv_margin(sqlite3_column_int(cascade_params_stmt, 1), sqlite3_column_int(cascade_params_stmt, 2), sqlite3_column_int(cascade_params_stmt, 3), sqlite3_column_int(cascade_params_stmt, 4));
    cascade->size = ccv_size(sqlite3_column_int(cascade_params_stmt, 5), sqlite3_column_int(cascade_params_stmt, 6));
   }
   sqlite3_finalize(cascade_params_stmt);
  }
  if (cascade)
  {
   const char classifier_params_qs[] =
    "SELECT classifier, count, threshold FROM classifier_params ORDER BY classifier ASC;";
   sqlite3_stmt* classifier_params_stmt = 0;
   if (SQLITE_OK == sqlite3_prepare_v2(db, classifier_params_qs, sizeof(classifier_params_qs), &classifier_params_stmt, 0))
   {
    while (sqlite3_step(classifier_params_stmt) == SQLITE_ROW)
     if (sqlite3_column_int(classifier_params_stmt, 0) < cascade->count)
     {
      ccv_scd_stump_classifier_t* classifier = cascade->classifiers + sqlite3_column_int(classifier_params_stmt, 0);
      classifier->count = sqlite3_column_int(classifier_params_stmt, 1);
      classifier->features = (ccv_scd_stump_feature_t*)ccmalloc(sizeof(ccv_scd_stump_feature_t) * classifier->count);
      classifier->threshold = (float)sqlite3_column_double(classifier_params_stmt, 2);
     }
    sqlite3_finalize(classifier_params_stmt);
   }
   const char feature_params_qs[] =
    "SELECT classifier, id, "
    "sx_0, sy_0, dx_0, dy_0, "
    "sx_1, sy_1, dx_1, dy_1, "
    "sx_2, sy_2, dx_2, dy_2, "
    "sx_3, sy_3, dx_3, dy_3, "
    "bias, w FROM feature_params ORDER BY classifier, id ASC;";
   sqlite3_stmt* feature_params_stmt = 0;
   if (SQLITE_OK == sqlite3_prepare_v2(db, feature_params_qs, sizeof(feature_params_qs), &feature_params_stmt, 0))
   {
    while (sqlite3_step(feature_params_stmt) == SQLITE_ROW)
     if (sqlite3_column_int(feature_params_stmt, 0) < cascade->count)
     {
      ccv_scd_stump_classifier_t* classifier = cascade->classifiers + sqlite3_column_int(feature_params_stmt, 0);
      if (sqlite3_column_int(feature_params_stmt, 1) < classifier->count)
      {
       ccv_scd_stump_feature_t* feature = classifier->features + sqlite3_column_int(feature_params_stmt, 1);
       for (i = 0; i < 4; i++)
       {
        feature->sx[i] = sqlite3_column_int(feature_params_stmt, 2 + i * 4);
        feature->sy[i] = sqlite3_column_int(feature_params_stmt, 3 + i * 4);
        feature->dx[i] = sqlite3_column_int(feature_params_stmt, 4 + i * 4);
        feature->dy[i] = sqlite3_column_int(feature_params_stmt, 5 + i * 4);
       }
       feature->bias = (float)sqlite3_column_double(feature_params_stmt, 18);
       int wnum = sqlite3_column_bytes(feature_params_stmt, 19);
       assert(wnum == 32 * sizeof(float));
       const void* w = sqlite3_column_blob(feature_params_stmt, 19);
       memcpy(feature->w, w, sizeof(float) * 32);
      }
     }
    sqlite3_finalize(feature_params_stmt);
   }
  }
  sqlite3_close(db);
 }
 return cascade;
}
