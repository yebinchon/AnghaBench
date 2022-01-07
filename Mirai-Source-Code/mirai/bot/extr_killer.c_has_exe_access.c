
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int FALSE ;
 int O_RDONLY ;
 int PATH_MAX ;
 int TABLE_KILLER_EXE ;
 int TABLE_KILLER_PROC ;
 int TRUE ;
 int close (int) ;
 int getpid () ;
 char* killer_realpath ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int readlink (char*,char*,int) ;
 int table_lock_val (int ) ;
 int table_retrieve_val (int ,int *) ;
 int table_unlock_val (int ) ;
 int util_itoa (int ,int,char*) ;
 int util_strcpy (char*,int ) ;
 int util_zero (char*,int) ;

__attribute__((used)) static BOOL has_exe_access(void)
{
    char path[PATH_MAX], *ptr_path = path, tmp[16];
    int fd, k_rp_len;

    table_unlock_val(TABLE_KILLER_PROC);
    table_unlock_val(TABLE_KILLER_EXE);


    ptr_path += util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, ((void*)0)));
    ptr_path += util_strcpy(ptr_path, util_itoa(getpid(), 10, tmp));
    ptr_path += util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_EXE, ((void*)0)));


    if ((fd = open(path, O_RDONLY)) == -1)
    {



        return FALSE;
    }
    close(fd);

    table_lock_val(TABLE_KILLER_PROC);
    table_lock_val(TABLE_KILLER_EXE);

    if ((k_rp_len = readlink(path, killer_realpath, PATH_MAX - 1)) != -1)
    {
        killer_realpath[k_rp_len] = 0;



    }

    util_zero(path, ptr_path - path);

    return TRUE;
}
