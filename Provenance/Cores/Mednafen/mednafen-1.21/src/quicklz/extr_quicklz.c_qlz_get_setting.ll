; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_get_setting.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_get_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QLZ_COMPRESSION_LEVEL = common dso_local global i32 0, align 4
@QLZ_SCRATCH_COMPRESS = common dso_local global i32 0, align 4
@QLZ_SCRATCH_DECOMPRESS = common dso_local global i32 0, align 4
@QLZ_STREAMING_MODE_VALUE = common dso_local global i32 0, align 4
@QLZ_VERSION_MAJOR = common dso_local global i32 0, align 4
@QLZ_VERSION_MINOR = common dso_local global i32 0, align 4
@QLZ_VERSION_REVISION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlz_get_setting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
    i32 5, label %14
    i32 6, label %15
    i32 7, label %16
    i32 8, label %18
    i32 9, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @QLZ_COMPRESSION_LEVEL, align 4
  store i32 %6, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load i32, i32* @QLZ_SCRATCH_COMPRESS, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @QLZ_SCRATCH_DECOMPRESS, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @QLZ_STREAMING_MODE_VALUE, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @QLZ_VERSION_MAJOR, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @QLZ_VERSION_MINOR, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @QLZ_VERSION_REVISION, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %18, %16, %15, %14, %13, %11, %9, %7, %5
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
