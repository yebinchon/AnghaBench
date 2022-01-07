
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ Package ;


 int assert (int) ;
 int buf_push (int ,TYPE_1__*) ;
 TYPE_1__* map_get (int *,int ) ;
 int map_put (int *,int ,TYPE_1__*) ;
 int package_list ;
 int package_map ;

void add_package(Package *package) {
    Package *old_package = map_get(&package_map, package->path);
    if (old_package != package) {
        assert(!old_package);
        map_put(&package_map, package->path, package);
        buf_push(package_list, package);
    }
}
