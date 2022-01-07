
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;


 int CHASSIS_FILEMODE_SECURE_MASK ;
 int chassis_filemode_check_full (int const*,int ,int *) ;

int chassis_filemode_check(const gchar *filename) {
 return chassis_filemode_check_full(filename, CHASSIS_FILEMODE_SECURE_MASK, ((void*)0));
}
