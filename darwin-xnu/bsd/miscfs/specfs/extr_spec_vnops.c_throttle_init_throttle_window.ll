; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_init_throttle_window.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_init_throttle_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"kern.io_throttle_window_tier1\00", align 1
@throttle_windows_msecs = common dso_local global i32* null, align 8
@THROTTLE_LEVEL_TIER1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"kern.io_throttle_window_tier2\00", align 1
@THROTTLE_LEVEL_TIER2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"kern.io_throttle_window_tier3\00", align 1
@THROTTLE_LEVEL_TIER3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"io_throttle_window_tier1\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"io_throttle_window_tier2\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"io_throttle_window_tier3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @throttle_init_throttle_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttle_init_throttle_window() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @PE_get_default(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %1, i32 4)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32*, i32** @throttle_windows_msecs, align 8
  %7 = load i64, i64* @THROTTLE_LEVEL_TIER1, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %5, i32* %8, align 4
  br label %9

9:                                                ; preds = %4, %0
  %10 = call i64 @PE_get_default(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %1, i32 4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = load i32*, i32** @throttle_windows_msecs, align 8
  %15 = load i64, i64* @THROTTLE_LEVEL_TIER2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = call i64 @PE_get_default(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %1, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = load i32*, i32** @throttle_windows_msecs, align 8
  %23 = load i64, i64* @THROTTLE_LEVEL_TIER3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %1, i32 4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = load i32*, i32** @throttle_windows_msecs, align 8
  %31 = load i64, i64* @THROTTLE_LEVEL_TIER1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %1, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = load i32*, i32** @throttle_windows_msecs, align 8
  %39 = load i64, i64* @THROTTLE_LEVEL_TIER2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %1, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = load i32*, i32** @throttle_windows_msecs, align 8
  %47 = load i64, i64* @THROTTLE_LEVEL_TIER3, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  ret void
}

declare dso_local i64 @PE_get_default(i8*, i32*, i32) #1

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
