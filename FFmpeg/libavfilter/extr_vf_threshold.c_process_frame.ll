; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_threshold.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__*, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__*, i64, %struct.TYPE_28__** }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_29__*, i32, %struct.TYPE_25__*, i32*, i32)* }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_25__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %5, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %22, i64 0
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %6, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %26, i32 0, %struct.TYPE_27__** %8, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %1
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %31, i32 1, %struct.TYPE_27__** %9, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %36, i32 2, %struct.TYPE_27__** %10, i32 0)
  store i32 %37, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %41, i32 3, %struct.TYPE_27__** %11, i32 0)
  store i32 %42, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %34, %29, %1
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %2, align 4
  br label %122

46:                                               ; preds = %39
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %53 = call %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__* %52)
  store %struct.TYPE_27__* %53, %struct.TYPE_27__** %7, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %55 = icmp ne %struct.TYPE_27__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %122

59:                                               ; preds = %51
  br label %104

60:                                               ; preds = %46
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_27__* @ff_get_video_buffer(%struct.TYPE_28__* %61, i32 %64, i32 %67)
  store %struct.TYPE_27__* %68, %struct.TYPE_27__** %7, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %70 = icmp ne %struct.TYPE_27__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %122

74:                                               ; preds = %60
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %77 = call i32 @av_frame_copy_props(%struct.TYPE_27__* %75, %struct.TYPE_27__* %76)
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 4
  store %struct.TYPE_27__* %78, %struct.TYPE_27__** %79, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 3
  store %struct.TYPE_27__* %80, %struct.TYPE_27__** %81, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  store %struct.TYPE_27__* %82, %struct.TYPE_27__** %83, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  store %struct.TYPE_27__* %84, %struct.TYPE_27__** %85, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store %struct.TYPE_27__* %86, %struct.TYPE_27__** %87, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_29__*, i32, %struct.TYPE_25__*, i32*, i32)*, i32 (%struct.TYPE_29__*, i32, %struct.TYPE_25__*, i32*, i32)** %91, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %94 = load i32, i32* @filter_slice, align 4
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %101 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_29__* %100)
  %102 = call i32 @FFMIN(i32 %99, i32 %101)
  %103 = call i32 %92(%struct.TYPE_29__* %93, i32 %94, %struct.TYPE_25__* %12, i32* null, i32 %102)
  br label %104

104:                                              ; preds = %74, %59
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @av_rescale_q(i32 %108, i32 %112, i32 %115)
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %121 = call i32 @ff_filter_frame(%struct.TYPE_28__* %119, %struct.TYPE_27__* %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %104, %71, %56, %44
  %123 = load i32, i32* %2, align 4
  ret i32 %123
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
