; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showwaves.c_alloc_out_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showwaves.c_alloc_out_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i64*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @alloc_out_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_out_frame(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %109, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_11__* @ff_get_video_buffer(%struct.TYPE_12__* %19, i32 %22, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %13, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %110

34:                                               ; preds = %18
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = ptrtoint i32* %48 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sdiv i64 %58, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @av_make_q(i32 1, i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @av_rescale_q(i32 %64, i32 %68, i32 %71)
  %73 = add nsw i64 %47, %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %105, %34
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %88, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %87, %95
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %99, %102
  %104 = call i32 @memset(i64 %96, i32 0, i32 %103)
  br label %105

105:                                              ; preds = %82
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %76

108:                                              ; preds = %76
  br label %109

109:                                              ; preds = %108, %5
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %31
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_11__* @ff_get_video_buffer(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_make_q(i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
