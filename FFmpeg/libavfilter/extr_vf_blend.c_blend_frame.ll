; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_23__**, %struct.TYPE_23__**, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_23__*, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { i32, i32 }

@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @blend_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @blend_frame(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %24, i64 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %9, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %29, i64 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  store %struct.TYPE_23__* %31, %struct.TYPE_23__** %10, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %32, i32 %35, i32 %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %11, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %41 = icmp ne %struct.TYPE_22__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %3
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %4, align 8
  br label %135

44:                                               ; preds = %3
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %45, %struct.TYPE_22__* %46)
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %123, %44
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %126

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 0, %64 ]
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %69, %65
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  store i32 %78, i32* %14, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @AV_CEIL_RSHIFT(i32 %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @AV_CEIL_RSHIFT(i32 %86, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 3
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %104 = load i32*, i32** %17, align 8
  store i32* %104, i32** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 5
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %106, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 6
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 7
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %110, %struct.TYPE_22__** %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)** %114, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = load i32, i32* @filter_slice, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_24__* %119)
  %121 = call i32 @FFMIN(i32 %118, i32 %120)
  %122 = call i32 %115(%struct.TYPE_24__* %116, i32 %117, %struct.TYPE_20__* %18, i32* null, i32 %121)
  br label %123

123:                                              ; preds = %77
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %48

126:                                              ; preds = %48
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call i32 @av_frame_free(%struct.TYPE_22__** %6)
  br label %133

133:                                              ; preds = %131, %126
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %134, %struct.TYPE_22__** %4, align 8
  br label %135

135:                                              ; preds = %133, %42
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %136
}

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
