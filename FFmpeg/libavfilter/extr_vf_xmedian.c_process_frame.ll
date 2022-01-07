; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xmedian.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_xmedian.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i32, i32*, i32, %struct.TYPE_18__, %struct.TYPE_23__** }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__*, %struct.TYPE_24__** }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_23__** }
%struct.TYPE_24__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %17, i64 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %5, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %6, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %24, align 8
  store %struct.TYPE_23__** %25, %struct.TYPE_23__*** %7, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %45, %1
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %36, i64 %38
  %40 = call i32 @ff_framesync_get_frame(%struct.TYPE_18__* %34, i32 %35, %struct.TYPE_23__** %39, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %102

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %49, i32 %52, i32 %55)
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %8, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = icmp ne %struct.TYPE_23__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %102

62:                                               ; preds = %48
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @av_rescale_q(i32 %66, i32 %70, i32 %73)
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  store %struct.TYPE_23__** %77, %struct.TYPE_23__*** %78, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %80, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)** %84, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_25__* %95)
  %97 = call i32 @FFMIN(i32 %94, i32 %96)
  %98 = call i32 %85(%struct.TYPE_25__* %86, i32 %89, %struct.TYPE_21__* %9, i32* null, i32 %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = call i32 @ff_filter_frame(%struct.TYPE_24__* %99, %struct.TYPE_23__* %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %62, %59, %42
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ff_framesync_get_frame(%struct.TYPE_18__*, i32, %struct.TYPE_23__**, i32) #1

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_25__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
