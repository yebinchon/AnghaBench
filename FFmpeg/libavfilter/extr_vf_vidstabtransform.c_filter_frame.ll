; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabtransform.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabtransform.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32* }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %6, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %7, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %27, i64 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = call i64 @av_frame_is_writable(%struct.TYPE_22__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %11, align 8
  br label %54

35:                                               ; preds = %2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %36, i32 %39, i32 %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %11, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %152

50:                                               ; preds = %35
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %51, %struct.TYPE_22__* %52)
  br label %54

54:                                               ; preds = %50, %33
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %87, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call %struct.TYPE_25__* @vsTransformGetSrcFrameInfo(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %55
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %62
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %55

90:                                               ; preds = %55
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @vsTransformPrepare(i32* %94, %struct.TYPE_20__* %12, %struct.TYPE_20__* %12)
  br label %135

96:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %129, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = call %struct.TYPE_26__* @vsTransformGetDestFrameInfo(i32* %99)
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %97
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %123, i32* %128, align 4
  br label %129

129:                                              ; preds = %104
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %97

132:                                              ; preds = %97
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @vsTransformPrepare(i32* %133, %struct.TYPE_20__* %12, %struct.TYPE_20__* %14)
  br label %135

135:                                              ; preds = %132, %93
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = call i32 @vsGetNextTransform(i32* %137, i32* %139)
  %141 = call i32 @vsDoTransform(i32* %136, i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @vsTransformFinish(i32* %142)
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  %147 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  br label %148

148:                                              ; preds = %146, %135
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %151 = call i32 @ff_filter_frame(%struct.TYPE_23__* %149, %struct.TYPE_22__* %150)
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %46
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @vsTransformGetSrcFrameInfo(i32*) #1

declare dso_local i32 @vsTransformPrepare(i32*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_26__* @vsTransformGetDestFrameInfo(i32*) #1

declare dso_local i32 @vsDoTransform(i32*, i32) #1

declare dso_local i32 @vsGetNextTransform(i32*, i32*) #1

declare dso_local i32 @vsTransformFinish(i32*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
