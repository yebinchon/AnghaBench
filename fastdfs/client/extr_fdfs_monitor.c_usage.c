
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDFS_TRACKER_SERVER_DEF_PORT ;
 int printf (char*,char*,int) ;

__attribute__((used)) static void usage(char *argv[])
{
 printf("Usage: %s <config_file> [-h <tracker_server>] "
            "[list|delete|set_trunk_server <group_name> [storage_id]]\n"
            "\tthe tracker server format: host[:port], "
            "the tracker default port is %d\n\n",
            argv[0], FDFS_TRACKER_SERVER_DEF_PORT);
}
