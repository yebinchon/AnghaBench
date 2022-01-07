; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedminmax.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedminmax.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_29__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__*, i64, %struct.TYPE_28__** }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)* }
%struct.TYPE_24__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@maskedminmax_slice = common dso_local global i32 0, align 4
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
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  store %struct.TYPE_29__* %15, %struct.TYPE_29__** %4, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %5, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %21, i64 0
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %6, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %25, i32 0, %struct.TYPE_27__** %8, i32 0)
  store i32 %26, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %30, i32 1, %struct.TYPE_27__** %9, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %35, i32 2, %struct.TYPE_27__** %10, i32 0)
  store i32 %36, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28, %1
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %33
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %47 = call %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__* %46)
  store %struct.TYPE_27__* %47, %struct.TYPE_27__** %7, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %49 = icmp ne %struct.TYPE_27__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %114

53:                                               ; preds = %45
  br label %96

54:                                               ; preds = %40
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_27__* @ff_get_video_buffer(%struct.TYPE_28__* %55, i32 %58, i32 %61)
  store %struct.TYPE_27__* %62, %struct.TYPE_27__** %7, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = icmp ne %struct.TYPE_27__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %114

68:                                               ; preds = %54
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %71 = call i32 @av_frame_copy_props(%struct.TYPE_27__* %69, %struct.TYPE_27__* %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  store %struct.TYPE_27__* %72, %struct.TYPE_27__** %73, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  store %struct.TYPE_27__* %74, %struct.TYPE_27__** %75, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store %struct.TYPE_27__* %76, %struct.TYPE_27__** %77, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  store %struct.TYPE_27__* %78, %struct.TYPE_27__** %79, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_24__*, i32*, i32)** %83, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %86 = load i32, i32* @maskedminmax_slice, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %93 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_29__* %92)
  %94 = call i32 @FFMIN(i32 %91, i32 %93)
  %95 = call i32 %84(%struct.TYPE_29__* %85, i32 %86, %struct.TYPE_24__* %12, i32* null, i32 %94)
  br label %96

96:                                               ; preds = %68, %53
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @av_rescale_q(i32 %100, i32 %104, i32 %107)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = call i32 @ff_filter_frame(%struct.TYPE_28__* %111, %struct.TYPE_27__* %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %96, %65, %50, %38
  %115 = load i32, i32* %2, align 4
  ret i32 %115
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
