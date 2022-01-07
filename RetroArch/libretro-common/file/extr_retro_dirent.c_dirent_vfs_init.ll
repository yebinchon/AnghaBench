; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_retro_dirent.c_dirent_vfs_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_retro_dirent.c_dirent_vfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_vfs_interface_info = type { i64, %struct.retro_vfs_interface* }
%struct.retro_vfs_interface = type { i32*, i32*, i32*, i32*, i32* }

@dirent_opendir_cb = common dso_local global i32* null, align 8
@dirent_readdir_cb = common dso_local global i32* null, align 8
@dirent_dirent_get_name_cb = common dso_local global i32* null, align 8
@dirent_dirent_is_dir_cb = common dso_local global i32* null, align 8
@dirent_closedir_cb = common dso_local global i32* null, align 8
@DIRENT_REQUIRED_VFS_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dirent_vfs_init(%struct.retro_vfs_interface_info* %0) #0 {
  %2 = alloca %struct.retro_vfs_interface_info*, align 8
  %3 = alloca %struct.retro_vfs_interface*, align 8
  store %struct.retro_vfs_interface_info* %0, %struct.retro_vfs_interface_info** %2, align 8
  store i32* null, i32** @dirent_opendir_cb, align 8
  store i32* null, i32** @dirent_readdir_cb, align 8
  store i32* null, i32** @dirent_dirent_get_name_cb, align 8
  store i32* null, i32** @dirent_dirent_is_dir_cb, align 8
  store i32* null, i32** @dirent_closedir_cb, align 8
  %4 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %5 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %4, i32 0, i32 1
  %6 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %5, align 8
  store %struct.retro_vfs_interface* %6, %struct.retro_vfs_interface** %3, align 8
  %7 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %8 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DIRENT_REQUIRED_VFS_VERSION, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %14 = icmp ne %struct.retro_vfs_interface* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %32

16:                                               ; preds = %12
  %17 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %18 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** @dirent_opendir_cb, align 8
  %20 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %21 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** @dirent_readdir_cb, align 8
  %23 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %24 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** @dirent_dirent_get_name_cb, align 8
  %26 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %27 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** @dirent_dirent_is_dir_cb, align 8
  %29 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %30 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** @dirent_closedir_cb, align 8
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
