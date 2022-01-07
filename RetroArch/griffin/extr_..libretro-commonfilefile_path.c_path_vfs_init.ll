; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_vfs_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilefile_path.c_path_vfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_vfs_interface_info = type { i64, %struct.retro_vfs_interface* }
%struct.retro_vfs_interface = type { i32, i32 }

@retro_vfs_stat_impl = common dso_local global i32 0, align 4
@path_stat_cb = common dso_local global i32 0, align 4
@retro_vfs_mkdir_impl = common dso_local global i32 0, align 4
@path_mkdir_cb = common dso_local global i32 0, align 4
@PATH_REQUIRED_VFS_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @path_vfs_init(%struct.retro_vfs_interface_info* %0) #0 {
  %2 = alloca %struct.retro_vfs_interface_info*, align 8
  %3 = alloca %struct.retro_vfs_interface*, align 8
  store %struct.retro_vfs_interface_info* %0, %struct.retro_vfs_interface_info** %2, align 8
  %4 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %5 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %4, i32 0, i32 1
  %6 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %5, align 8
  store %struct.retro_vfs_interface* %6, %struct.retro_vfs_interface** %3, align 8
  %7 = load i32, i32* @retro_vfs_stat_impl, align 4
  store i32 %7, i32* @path_stat_cb, align 4
  %8 = load i32, i32* @retro_vfs_mkdir_impl, align 4
  store i32 %8, i32* @path_mkdir_cb, align 4
  %9 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %10 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PATH_REQUIRED_VFS_VERSION, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %16 = icmp ne %struct.retro_vfs_interface* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %25

18:                                               ; preds = %14
  %19 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %20 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @path_stat_cb, align 4
  %22 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %23 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @path_mkdir_cb, align 4
  br label %25

25:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
