; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_frei0r.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_frei0r.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 (i32, i32, i32*, i32*)* }
%struct.TYPE_16__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %18, i64 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %7, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__* %21, i32 %24, i32 %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %8, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call i32 @av_frame_copy_props(%struct.TYPE_16__* %36, %struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @av_q2d(i32 %50)
  %52 = mul nsw i32 %47, %51
  %53 = mul nsw i32 %52, 1000
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 %41(i32 %44, i32 %53, i32* %59, i32* %65)
  %67 = call i32 @av_frame_free(%struct.TYPE_16__** %5)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = call i32 @ff_filter_frame(%struct.TYPE_17__* %68, %struct.TYPE_16__* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %35, %31
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_16__* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_16__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
