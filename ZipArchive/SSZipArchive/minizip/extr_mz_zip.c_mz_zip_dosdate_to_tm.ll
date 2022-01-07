; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_dosdate_to_tm.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_dosdate_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_FORMAT_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_dosdate_to_tm(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tm* %1, %struct.tm** %5, align 8
  %6 = load %struct.tm*, %struct.tm** %5, align 8
  %7 = icmp eq %struct.tm* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %9, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.tm*, %struct.tm** %5, align 8
  %13 = call i32 @mz_zip_dosdate_to_raw_tm(i32 %11, %struct.tm* %12)
  %14 = load %struct.tm*, %struct.tm** %5, align 8
  %15 = call i64 @mz_zip_invalid_date(%struct.tm* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.tm*, %struct.tm** %5, align 8
  %19 = call i32 @memset(%struct.tm* %18, i32 0, i32 4)
  %20 = load i32, i32* @MZ_FORMAT_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @MZ_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17, %8
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @mz_zip_dosdate_to_raw_tm(i32, %struct.tm*) #1

declare dso_local i64 @mz_zip_invalid_date(%struct.tm*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
