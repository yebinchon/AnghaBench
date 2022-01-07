; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_win32_to_posix.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_win32_to_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_attrib_win32_to_posix(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %9, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  store i32 292, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 146
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 40960
  store i32 %26, i32* %24, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 16457
  store i32 %34, i32* %32, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 32768
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* @MZ_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
