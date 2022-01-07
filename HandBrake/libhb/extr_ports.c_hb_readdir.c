
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dirent {int d_namlen; int d_reclen; int d_ino; int d_name; } ;
struct _wdirent {int d_reclen; int d_ino; int d_name; } ;
struct TYPE_4__ {struct dirent entry; int wdir; } ;
typedef TYPE_1__ HB_DIR ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,int ,int,int ,int,int *,int *) ;
 struct _wdirent* _wreaddir (int ) ;
 struct dirent* readdir (TYPE_1__*) ;

struct dirent * hb_readdir(HB_DIR *dir)
{
    return readdir(dir);

}
