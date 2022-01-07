; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_rename.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_esp_vfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@rename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_vfs_rename(%struct._reent* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @get_vfs_for_path(i8* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %9, align 4
  store i32 -1, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @get_vfs_for_path(i8* %22)
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EXDEV, align 4
  store i32 %28, i32* %11, align 4
  store i32 -1, i32* %4, align 4
  br label %44

29:                                               ; preds = %21
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @translate_path(i32* %30, i8* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @translate_path(i32* %33, i8* %34)
  store i8* %35, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct._reent*, %struct._reent** %5, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @rename, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @CHECK_AND_CALL(i32 %36, %struct._reent* %37, i32* %38, i32 %39, i8* %40, i8* %41)
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %29, %27, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @get_vfs_for_path(i8*) #1

declare dso_local i8* @translate_path(i32*, i8*) #1

declare dso_local i32 @CHECK_AND_CALL(i32, %struct._reent*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
