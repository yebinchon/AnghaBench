; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp_encode.c_rbmp_save_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp_encode.c_rbmp_save_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@RBMP_SOURCE_TYPE_ARGB8888 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbmp_save_image(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %18 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %19 = call i32* @filestream_open(i8* %16, i32 %17, i32 %18)
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %46

23:                                               ; preds = %6
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @RBMP_SOURCE_TYPE_ARGB8888, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @write_header_bmp(i32* %24, i32 %25, i32 %26, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load i32*, i32** %15, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @dump_content(i32* %35, i8* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %23
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @filestream_close(i32* %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %22
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @write_header_bmp(i32*, i32, i32, i32) #1

declare dso_local i32 @dump_content(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
