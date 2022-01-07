; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_io_will_be_throttled_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_io_will_be_throttled_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i64, i64, i32*, i64* }
%struct.timeval = type { i32, i64 }

@THROTTLE_LEVEL_THROTTLED = common dso_local global i32 0, align 4
@THROTTLE_DISENGAGED = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_START = common dso_local global i32 0, align 4
@throttle_windows_msecs = common dso_local global i64* null, align 8
@THROTTLE_NOW = common dso_local global i32 0, align 4
@THROTTLE_ENGAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @throttle_io_will_be_throttled_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_io_will_be_throttled_internal(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._throttle_io_info_t*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct._throttle_io_info_t*
  store %struct._throttle_io_info_t* %15, %struct._throttle_io_info_t** %8, align 8
  %16 = call i32 @throttle_get_thread_throttle_level(i32* null)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @THROTTLE_DISENGAGED, align 4
  store i32 %20, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = call i32 @microuptime(%struct.timeval* %10)
  %23 = load i32, i32* @THROTTLE_LEVEL_START, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %66, %21
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %30 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %69

38:                                               ; preds = %28
  %39 = bitcast %struct.timeval* %9 to i8*
  %40 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %42 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @timevalsub(%struct.timeval* %9, i32* %46)
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = mul nsw i32 %50, 1000
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 1000
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i64*, i64** @throttle_windows_msecs, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %38
  br label %69

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %24

69:                                               ; preds = %64, %37, %24
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @THROTTLE_DISENGAGED, align 4
  store i32 %74, i32* %4, align 4
  br label %99

75:                                               ; preds = %69
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32*, i32** %7, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %89 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %8, align 8
  %92 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @THROTTLE_NOW, align 4
  store i32 %96, i32* %4, align 4
  br label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @THROTTLE_ENGAGED, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %95, %73, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @throttle_get_thread_throttle_level(i32*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timevalsub(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
