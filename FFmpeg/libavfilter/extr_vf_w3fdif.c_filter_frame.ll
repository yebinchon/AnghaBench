; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_w3fdif.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_w3fdif.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = call i32 @av_frame_free(%struct.TYPE_12__** %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = call i8* @av_frame_clone(%struct.TYPE_12__* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_12__*
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %118

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57, %52
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %64, %57
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i8* @av_frame_clone(%struct.TYPE_12__* %72)
  %74 = bitcast i8* %73 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %9, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %118

80:                                               ; preds = %69
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = call i32 @av_frame_free(%struct.TYPE_12__** %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %80
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = call i32 @ff_filter_frame(i32 %99, %struct.TYPE_12__* %100)
  store i32 %101, i32* %3, align 4
  br label %118

102:                                              ; preds = %64
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = call i32 @filter(%struct.TYPE_14__* %109, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %118

115:                                              ; preds = %108
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = call i32 @filter(%struct.TYPE_14__* %116, i32 1)
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %113, %107, %94, %77, %48
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @filter(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
