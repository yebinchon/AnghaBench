; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_bs2b.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_bs2b.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 (i32, i32, i32)* }
%struct.TYPE_19__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %19, i64 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %9, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = call i64 @av_frame_is_writable(%struct.TYPE_19__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %7, align 8
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__* %28, i32 %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %7, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %27
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = call i32 @av_frame_copy(%struct.TYPE_19__* %40, %struct.TYPE_19__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = call i32 @av_frame_copy_props(%struct.TYPE_19__* %43, %struct.TYPE_19__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = call i32 @av_frame_free(%struct.TYPE_19__** %7)
  %50 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %56(i32 %59, i32 %64, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = icmp ne %struct.TYPE_19__* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  br label %74

74:                                               ; preds = %72, %53
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %77 = call i32 @ff_filter_frame(%struct.TYPE_20__* %75, %struct.TYPE_19__* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %48, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @ff_get_audio_buffer(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
