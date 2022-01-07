
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int hb_stat_t ;


 int CP_UTF8 ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int _wstat64 (int *,int *) ;
 int stat (char const*,int *) ;

int hb_stat(const char *path, hb_stat_t *sb)
{






    return stat(path, sb);

}
