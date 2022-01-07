
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int VC_URI_PARTS_T ;
typedef int VC_CONTAINERS_LIST_T ;
typedef int VC_CONTAINERS_LIST_COMPARATOR_T ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ PARAMETER_T ;


 scalar_t__ parameter_comparator ;
 int * vc_containers_list_create (scalar_t__,int,int ) ;
 int vc_containers_list_destroy (int *) ;
 int vc_containers_list_insert (int *,TYPE_1__*,int) ;
 int vc_containers_list_validate (int *) ;
 scalar_t__ vc_uri_num_queries (int *) ;
 int vc_uri_query (int *,scalar_t__,int *,int *) ;

__attribute__((used)) static VC_CONTAINERS_LIST_T *fill_parameter_list(VC_URI_PARTS_T *uri)
{
   uint32_t num_parameters = vc_uri_num_queries(uri);
   VC_CONTAINERS_LIST_T *parameters;
   uint32_t ii;

   parameters = vc_containers_list_create(num_parameters, sizeof(PARAMETER_T), (VC_CONTAINERS_LIST_COMPARATOR_T)parameter_comparator);
   if (!parameters)
      return ((void*)0);

   for (ii = 0; ii < num_parameters; ii++)
   {
      PARAMETER_T param;

      vc_uri_query(uri, ii, &param.name, &param.value);
      if (!vc_containers_list_insert(parameters, &param, 0))
      {
         vc_containers_list_destroy(parameters);
         return ((void*)0);
      }
   }





   return parameters;
}
