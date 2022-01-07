; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_time_t_to_tm.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_zip.c_mz_zip_time_t_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_zip_time_t_to_tm(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.tm, align 4
  store i32 %0, i32* %4, align 4
  store %struct.tm* %1, %struct.tm** %5, align 8
  %7 = load %struct.tm*, %struct.tm** %5, align 8
  %8 = icmp eq %struct.tm* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = call i32* @localtime_r(i32* %4, %struct.tm* %6)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = call i32 @memset(%struct.tm* %15, i32 0, i32 4)
  %17 = load i32, i32* @MZ_INTERNAL_ERROR, align 4
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.tm*, %struct.tm** %5, align 8
  %20 = call i32 @memcpy(%struct.tm* %19, %struct.tm* %6, i32 4)
  %21 = load i32, i32* @MZ_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %14, %9
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.tm*, %struct.tm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
