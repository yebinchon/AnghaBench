; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_io_will_be_throttled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_io_will_be_throttled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32*, i64* }
%struct.timeval = type { i32, i64 }

@THROTTLE_LEVEL_TIER3 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER2 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER1 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_TIER0 = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_START = common dso_local global i32 0, align 4
@throttle_windows_msecs = common dso_local global i64* null, align 8
@THROTTLE_DISENGAGED = common dso_local global i32 0, align 4
@THROTTLE_ENGAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @throttle_info_io_will_be_throttled(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._throttle_io_info_t*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct._throttle_io_info_t*
  store %struct._throttle_io_info_t* %12, %struct._throttle_io_info_t** %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %16
    i32 130, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @THROTTLE_LEVEL_TIER3, align 4
  store i32 %15, i32* %10, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @THROTTLE_LEVEL_TIER2, align 4
  store i32 %17, i32* %10, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @THROTTLE_LEVEL_TIER1, align 4
  store i32 %19, i32* %10, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @THROTTLE_LEVEL_TIER0, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %18, %16, %14
  %23 = load i32, i32* @THROTTLE_LEVEL_START, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %30 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %68

38:                                               ; preds = %28
  %39 = call i32 @microuptime(%struct.timeval* %7)
  %40 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %41 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @timevalsub(%struct.timeval* %7, i32* %45)
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = mul nsw i32 %49, 1000
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 1000
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i64*, i64** @throttle_windows_msecs, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  br label %68

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %24

68:                                               ; preds = %63, %37, %24
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @THROTTLE_DISENGAGED, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @THROTTLE_ENGAGED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @timevalsub(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
