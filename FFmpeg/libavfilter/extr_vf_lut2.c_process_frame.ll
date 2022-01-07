; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__*, i64, %struct.TYPE_28__** }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)* }
%struct.TYPE_24__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %14, %struct.TYPE_29__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %20, i64 0
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %9, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %24, i32 0, %struct.TYPE_27__** %8, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %29, i32 1, %struct.TYPE_27__** %9, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %111

34:                                               ; preds = %27
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %41 = icmp ne %struct.TYPE_27__* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %44 = call %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__* %43)
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %7, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %46 = icmp ne %struct.TYPE_27__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %111

50:                                               ; preds = %42
  br label %93

51:                                               ; preds = %39
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_27__* @ff_get_video_buffer(%struct.TYPE_28__* %52, i32 %55, i32 %58)
  store %struct.TYPE_27__* %59, %struct.TYPE_27__** %7, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %61 = icmp ne %struct.TYPE_27__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %111

65:                                               ; preds = %51
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %68 = call i32 @av_frame_copy_props(%struct.TYPE_27__* %66, %struct.TYPE_27__* %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  store %struct.TYPE_27__* %69, %struct.TYPE_27__** %70, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %72, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  store %struct.TYPE_27__* %73, %struct.TYPE_27__** %74, align 8
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)** %78, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %90 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_29__* %89)
  %91 = call i32 @FFMIN(i32 %88, i32 %90)
  %92 = call i32 %79(%struct.TYPE_29__* %80, i32 %83, %struct.TYPE_24__* %11, i32* null, i32 %91)
  br label %93

93:                                               ; preds = %65, %50
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @av_rescale_q(i32 %97, i32 %101, i32 %104)
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %110 = call i32 @ff_filter_frame(%struct.TYPE_28__* %108, %struct.TYPE_27__* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %93, %62, %47, %32
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @ff_framesync_get_frame(%struct.TYPE_22__*, i32, %struct.TYPE_27__**, i32) #1

declare dso_local %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_27__* @ff_get_video_buffer(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_29__*) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
