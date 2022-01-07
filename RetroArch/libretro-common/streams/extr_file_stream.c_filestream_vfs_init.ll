; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_vfs_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_file_stream.c_filestream_vfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_vfs_interface_info = type { i64, %struct.retro_vfs_interface* }
%struct.retro_vfs_interface = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@filestream_get_path_cb = common dso_local global i32* null, align 8
@filestream_open_cb = common dso_local global i32* null, align 8
@filestream_close_cb = common dso_local global i32* null, align 8
@filestream_tell_cb = common dso_local global i32* null, align 8
@filestream_size_cb = common dso_local global i32* null, align 8
@filestream_truncate_cb = common dso_local global i32* null, align 8
@filestream_seek_cb = common dso_local global i32* null, align 8
@filestream_read_cb = common dso_local global i32* null, align 8
@filestream_write_cb = common dso_local global i32* null, align 8
@filestream_flush_cb = common dso_local global i32* null, align 8
@filestream_remove_cb = common dso_local global i32* null, align 8
@filestream_rename_cb = common dso_local global i32* null, align 8
@FILESTREAM_REQUIRED_VFS_VERSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filestream_vfs_init(%struct.retro_vfs_interface_info* %0) #0 {
  %2 = alloca %struct.retro_vfs_interface_info*, align 8
  %3 = alloca %struct.retro_vfs_interface*, align 8
  store %struct.retro_vfs_interface_info* %0, %struct.retro_vfs_interface_info** %2, align 8
  store i32* null, i32** @filestream_get_path_cb, align 8
  store i32* null, i32** @filestream_open_cb, align 8
  store i32* null, i32** @filestream_close_cb, align 8
  store i32* null, i32** @filestream_tell_cb, align 8
  store i32* null, i32** @filestream_size_cb, align 8
  store i32* null, i32** @filestream_truncate_cb, align 8
  store i32* null, i32** @filestream_seek_cb, align 8
  store i32* null, i32** @filestream_read_cb, align 8
  store i32* null, i32** @filestream_write_cb, align 8
  store i32* null, i32** @filestream_flush_cb, align 8
  store i32* null, i32** @filestream_remove_cb, align 8
  store i32* null, i32** @filestream_rename_cb, align 8
  %4 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %5 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %4, i32 0, i32 1
  %6 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %5, align 8
  store %struct.retro_vfs_interface* %6, %struct.retro_vfs_interface** %3, align 8
  %7 = load %struct.retro_vfs_interface_info*, %struct.retro_vfs_interface_info** %2, align 8
  %8 = getelementptr inbounds %struct.retro_vfs_interface_info, %struct.retro_vfs_interface_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FILESTREAM_REQUIRED_VFS_VERSION, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %14 = icmp ne %struct.retro_vfs_interface* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %53

16:                                               ; preds = %12
  %17 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %18 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %17, i32 0, i32 11
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** @filestream_get_path_cb, align 8
  %20 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %21 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** @filestream_open_cb, align 8
  %23 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %24 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %23, i32 0, i32 9
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** @filestream_close_cb, align 8
  %26 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %27 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** @filestream_size_cb, align 8
  %29 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %30 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** @filestream_truncate_cb, align 8
  %32 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %33 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** @filestream_tell_cb, align 8
  %35 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %36 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** @filestream_seek_cb, align 8
  %38 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %39 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** @filestream_read_cb, align 8
  %41 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %42 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** @filestream_write_cb, align 8
  %44 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %45 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** @filestream_flush_cb, align 8
  %47 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %48 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** @filestream_remove_cb, align 8
  %50 = load %struct.retro_vfs_interface*, %struct.retro_vfs_interface** %3, align 8
  %51 = getelementptr inbounds %struct.retro_vfs_interface, %struct.retro_vfs_interface* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** @filestream_rename_cb, align 8
  br label %53

53:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
