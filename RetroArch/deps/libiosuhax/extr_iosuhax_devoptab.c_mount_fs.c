
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOSUHAX_FSA_Mount (int,char const*,char const*,int,int ,int ) ;
 int fs_dev_add_device (char const*,char const*,int,int) ;

int mount_fs(const char *virt_name, int fsaFd, const char *dev_path, const char *mount_path)
{
    int isMounted = 0;

    if(dev_path)
    {
        isMounted = 1;

        int res = IOSUHAX_FSA_Mount(fsaFd, dev_path, mount_path, 2, 0, 0);
        if(res != 0)
        {
            return res;
        }
    }

    return fs_dev_add_device(virt_name, mount_path, fsaFd, isMounted);
}
