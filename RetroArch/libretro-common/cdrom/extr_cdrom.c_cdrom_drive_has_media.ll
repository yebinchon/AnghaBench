; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_drive_has_media.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_cdrom_drive_has_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_drive_has_media(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %8 = bitcast [256 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 256, i1 false)
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %10 = load i8, i8* %3, align 1
  %11 = call i32 @cdrom_device_fillpath(i8* %9, i32 256, i8 signext %10, i32 1, i32 0)
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %14 = call i32* @filestream_open(i8* %12, i32 %13, i32 0)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @filestream_get_vfs_handle(i32* %18)
  store i32* %19, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @cdrom_is_media_inserted(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @filestream_close(i32* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cdrom_device_fillpath(i8*, i32, i8 signext, i32, i32) #2

declare dso_local i32* @filestream_open(i8*, i32, i32) #2

declare dso_local i32* @filestream_get_vfs_handle(i32*) #2

declare dso_local i32 @cdrom_is_media_inserted(i32*) #2

declare dso_local i32 @filestream_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
