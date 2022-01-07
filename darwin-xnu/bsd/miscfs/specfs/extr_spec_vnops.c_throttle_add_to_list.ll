; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_add_to_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._throttle_io_info_t = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@THROTTLE_LEVEL_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@uu_throttlelist = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_END = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_THROTTLED = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._throttle_io_info_t*, %struct.TYPE_6__*, i32, i64)* @throttle_add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttle_add_to_list(%struct._throttle_io_info_t* %0, %struct.TYPE_6__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct._throttle_io_info_t*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct._throttle_io_info_t* %0, %struct._throttle_io_info_t** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @THROTTLE_LEVEL_START, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %14 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i64 @TAILQ_EMPTY(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %23 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %30 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %21, %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @TRUE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %42 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = load i32, i32* @uu_throttlelist, align 4
  %49 = call i32 @TAILQ_INSERT_TAIL(i32* %46, %struct.TYPE_6__* %47, i32 %48)
  br label %60

50:                                               ; preds = %36
  %51 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %52 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = load i32, i32* @uu_throttlelist, align 4
  %59 = call i32 @TAILQ_INSERT_HEAD(i32* %56, %struct.TYPE_6__* %57, i32 %58)
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @TRUE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %60
  %68 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = load i32, i32* @THROTTLE_LEVEL_START, align 4
  %71 = call i32 @throttle_timer_start(%struct._throttle_io_info_t* %68, i64 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @THROTTLE_LEVEL_END, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @THROTTLE_LEVEL_THROTTLED, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %5, align 8
  %83 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = load i32, i32* @uu_throttlelist, align 4
  %92 = call i32 @TAILQ_REMOVE(i32* %89, %struct.TYPE_6__* %90, i32 %91)
  %93 = load i64, i64* @THROTTLE_LEVEL_NONE, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %81, %75
  br label %98

98:                                               ; preds = %97, %67
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @throttle_timer_start(%struct._throttle_io_info_t*, i64, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
