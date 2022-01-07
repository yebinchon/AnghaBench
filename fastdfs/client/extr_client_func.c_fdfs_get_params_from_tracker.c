
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IniContext ;


 int fdfs_get_ini_context_from_tracker (int *,int *,int*,int,int *) ;
 int fdfs_get_storage_ids_from_tracker_group (int *) ;
 int g_tracker_group ;
 int iniFreeContext (int *) ;
 int iniGetBoolValue (int *,char*,int *,int) ;

__attribute__((used)) static int fdfs_get_params_from_tracker(bool *use_storage_id)
{
    IniContext iniContext;
 int result;
 bool continue_flag;

 continue_flag = 0;
 if ((result=fdfs_get_ini_context_from_tracker(&g_tracker_group,
  &iniContext, &continue_flag, 0, ((void*)0))) != 0)
    {
        return result;
    }

 *use_storage_id = iniGetBoolValue(((void*)0), "use_storage_id",
            &iniContext, 0);
    iniFreeContext(&iniContext);

 if (*use_storage_id)
 {
  result = fdfs_get_storage_ids_from_tracker_group(
    &g_tracker_group);
 }

    return result;
}
