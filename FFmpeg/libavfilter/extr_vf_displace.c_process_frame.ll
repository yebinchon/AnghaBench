; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_displace.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_displace.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*)* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %5, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %20, i64 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %6, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %24, i32 0, %struct.TYPE_25__** %8, i32 0)
  store i32 %25, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %29, i32 1, %struct.TYPE_25__** %9, i32 0)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = call i32 @ff_framesync_get_frame(%struct.TYPE_22__* %34, i32 2, %struct.TYPE_25__** %10, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %27, %1
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %2, align 4
  br label %98

39:                                               ; preds = %32
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %46 = call %struct.TYPE_25__* @av_frame_clone(%struct.TYPE_25__* %45)
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %7, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = icmp ne %struct.TYPE_25__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %98

52:                                               ; preds = %44
  br label %80

53:                                               ; preds = %39
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_25__* @ff_get_video_buffer(%struct.TYPE_26__* %54, i32 %57, i32 %60)
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %7, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %63 = icmp ne %struct.TYPE_25__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %98

67:                                               ; preds = %53
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %70 = call i32 @av_frame_copy_props(%struct.TYPE_25__* %68, %struct.TYPE_25__* %69)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*)** %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = call i32 %73(%struct.TYPE_24__* %74, %struct.TYPE_25__* %75, %struct.TYPE_25__* %76, %struct.TYPE_25__* %77, %struct.TYPE_25__* %78)
  br label %80

80:                                               ; preds = %67, %52
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @av_rescale_q(i32 %84, i32 %88, i32 %91)
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = call i32 @ff_filter_frame(%struct.TYPE_26__* %95, %struct.TYPE_25__* %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %80, %64, %49, %37
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ff_framesync_get_frame(%struct.TYPE_22__*, i32, %struct.TYPE_25__**, i32) #1

declare dso_local %struct.TYPE_25__* @av_frame_clone(%struct.TYPE_25__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_25__* @ff_get_video_buffer(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
