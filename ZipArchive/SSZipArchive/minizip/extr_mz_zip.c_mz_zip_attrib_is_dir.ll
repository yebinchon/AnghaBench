; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_is_dir.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_attrib_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_OK = common dso_local global i64 0, align 8
@MZ_HOST_SYSTEM_UNIX = common dso_local global i32 0, align 4
@MZ_EXIST_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mz_zip_attrib_is_dir(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @MZ_HOST_SYSTEM(i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @MZ_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MZ_HOST_SYSTEM_UNIX, align 4
  %15 = call i64 @mz_zip_attrib_convert(i32 %12, i32 %13, i32 %14, i32* %6)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @MZ_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 61440
  %22 = icmp eq i32 %21, 16384
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @MZ_OK, align 8
  store i64 %24, i64* %3, align 8
  br label %28

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i64, i64* @MZ_EXIST_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @MZ_HOST_SYSTEM(i64) #1

declare dso_local i64 @mz_zip_attrib_convert(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
