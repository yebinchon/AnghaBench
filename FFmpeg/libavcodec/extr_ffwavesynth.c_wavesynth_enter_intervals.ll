; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_enter_intervals.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffwavesynth.c_wavesynth_enter_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavesynth_context = type { i32, i32, i32, i64, %struct.ws_interval* }
%struct.ws_interval = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@INF_TS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wavesynth_context*, i64)* @wavesynth_enter_intervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wavesynth_enter_intervals(%struct.wavesynth_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wavesynth_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ws_interval*, align 8
  store %struct.wavesynth_context* %0, %struct.wavesynth_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %9 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %8, i32 0, i32 0
  store i32* %9, i32** %5, align 8
  %10 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %11 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %24, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %18 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %17, i32 0, i32 4
  %19 = load %struct.ws_interval*, %struct.ws_interval** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %19, i64 %21
  %23 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %22, i32 0, i32 0
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %26 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %25, i32 0, i32 4
  %27 = load %struct.ws_interval*, %struct.ws_interval** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %27, i64 %29
  %31 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %35 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %83, %33
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %40 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %45 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %44, i32 0, i32 4
  %46 = load %struct.ws_interval*, %struct.ws_interval** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %46, i64 %48
  store %struct.ws_interval* %49, %struct.ws_interval** %7, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %52 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %86

56:                                               ; preds = %43
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %59 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %83

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %67 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %66, i32 0, i32 0
  store i32* %67, i32** %5, align 8
  %68 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %69 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %72 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %74 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %77 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %79 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ws_interval*, %struct.ws_interval** %7, align 8
  %82 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %63, %62
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %37

86:                                               ; preds = %55, %37
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %89 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %92 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %97 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %96, i32 0, i32 4
  %98 = load %struct.ws_interval*, %struct.ws_interval** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %98, i64 %100
  %102 = getelementptr inbounds %struct.ws_interval, %struct.ws_interval* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  br label %106

104:                                              ; preds = %86
  %105 = load i64, i64* @INF_TS, align 8
  br label %106

106:                                              ; preds = %104, %95
  %107 = phi i64 [ %103, %95 ], [ %105, %104 ]
  %108 = load %struct.wavesynth_context*, %struct.wavesynth_context** %3, align 8
  %109 = getelementptr inbounds %struct.wavesynth_context, %struct.wavesynth_context* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %5, align 8
  store i32 -1, i32* %110, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
