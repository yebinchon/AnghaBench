
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ decode; } ;
struct TYPE_16__ {int vcodec; TYPE_3__* title; int * list_filter; TYPE_1__ qsv; } ;
typedef TYPE_4__ hb_job_t ;
struct TYPE_17__ {int id; int name; int settings; } ;
typedef TYPE_5__ hb_filter_object_t ;
typedef int hb_dict_t ;
struct TYPE_14__ {int width; int height; } ;
struct TYPE_15__ {int* crop; TYPE_2__ geometry; } ;


 scalar_t__ HB_CPU_PLATFORM_INTEL_IVB ;



 int HB_FILTER_QSV ;
 int HB_FILTER_QSV_POST ;
 int HB_FILTER_QSV_PRE ;


 int HB_VCODEC_QSV_MASK ;
 int MODE_DEINTERLACE_QSV ;
 int hb_add_filter_dict (TYPE_4__*,TYPE_5__*,int *) ;
 int hb_dict_extract_int (int*,int ,char*) ;
 int hb_dict_get_int (int ,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_filter_close (TYPE_5__**) ;
 TYPE_5__* hb_filter_init (int ) ;
 scalar_t__ hb_get_cpu_platform () ;
 int hb_list_count (int *) ;
 TYPE_5__* hb_list_item (int *,int) ;
 int hb_list_rem (int *,TYPE_5__*) ;
 int hb_log (char*,...) ;
 scalar_t__ hb_qsv_copyframe_is_slow (int) ;
 int hb_value_free (int **) ;
 int hb_value_int (int) ;

__attribute__((used)) static int sanitize_qsv( hb_job_t * job )
{
    return 0;
}
