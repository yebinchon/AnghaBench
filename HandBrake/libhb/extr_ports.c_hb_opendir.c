
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {int * wdir; } ;
typedef TYPE_1__ HB_DIR ;


 int CP_UTF8 ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * _wopendir (int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* opendir (char const*) ;

HB_DIR* hb_opendir(const char *path)
{
    return opendir(path);

}
