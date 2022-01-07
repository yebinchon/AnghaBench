
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVFS_CHAR ;
 int GID_WHEEL ;
 int RANDOM_MAJOR ;
 int RANDOM_MINOR ;
 int UID_ROOT ;
 int URANDOM_MINOR ;
 int cdevsw_add (int ,int *) ;
 int devfs_make_node (int ,int ,int ,int ,int,char*,int ) ;
 int makedev (int,int ) ;
 int panic (char*) ;
 int random_cdevsw ;

void
random_init(void)
{
 int ret;

 ret = cdevsw_add(RANDOM_MAJOR, &random_cdevsw);
 if (ret < 0) {
  panic("random_init: failed to allocate a major number!");
 }

 devfs_make_node(makedev (ret, RANDOM_MINOR), DEVFS_CHAR,
  UID_ROOT, GID_WHEEL, 0666, "random", 0);





 devfs_make_node(makedev (ret, URANDOM_MINOR), DEVFS_CHAR,
  UID_ROOT, GID_WHEEL, 0666, "urandom", 0);

}
