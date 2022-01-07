; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_shuffleplanes.c_shuffleplanes_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_shuffleplanes.c_shuffleplanes_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64*, i64 }
%struct.TYPE_15__ = type { i32*, i32, i32, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @shuffleplanes_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shuffleplanes_filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [4 x i32*], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = bitcast [4 x i32*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 32, i1 false)
  %20 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %58, %2
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32*, i32** %30, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 %41
  store i32* %39, i32** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = bitcast i32** %64 to i32*
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 0
  %67 = bitcast i32** %66 to i32*
  %68 = call i32 @memcpy(i32* %65, i32* %67, i32 32)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %73 = call i32 @memcpy(i32* %71, i32* %72, i32 16)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %61
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.TYPE_15__* @ff_get_video_buffer(i32 %83, i32 %86, i32 %89)
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %12, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %92 = icmp ne %struct.TYPE_15__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %78
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %11, align 4
  br label %118

96:                                               ; preds = %78
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = call i32 @av_frame_copy(%struct.TYPE_15__* %97, %struct.TYPE_15__* %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = call i32 @av_frame_copy_props(%struct.TYPE_15__* %100, %struct.TYPE_15__* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = call i32 @av_frame_free(%struct.TYPE_15__** %12)
  br label %118

107:                                              ; preds = %96
  %108 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %5, align 8
  br label %110

110:                                              ; preds = %107, %61
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = call i32 @ff_filter_frame(i32 %115, %struct.TYPE_15__* %116)
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %105, %93
  %119 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %110
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_15__* @ff_get_video_buffer(i32, i32, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_frame_copy(%struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #2

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
