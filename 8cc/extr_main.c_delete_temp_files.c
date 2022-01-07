
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tmpfiles ;
 int unlink (int ) ;
 int vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void delete_temp_files() {
    for (int i = 0; i < vec_len(tmpfiles); i++)
        unlink(vec_get(tmpfiles, i));
}
