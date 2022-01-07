; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_query_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_query_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_20__, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate a surface.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_21__*, %struct.TYPE_23__*)* @query_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @query_frame(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clear_unused_frames(i32 %14)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = call %struct.TYPE_22__* @get_free_frame(i32* %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = icmp ne %struct.TYPE_22__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_SYSTEM_MEMORY(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %22
  %29 = call %struct.TYPE_17__* (...) @av_frame_alloc()
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %120

37:                                               ; preds = %28
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 @av_hwframe_get_buffer(i32 %40, %struct.TYPE_17__* %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(i32* %48, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %120

51:                                               ; preds = %37
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_20__*
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %61, align 8
  br label %109

62:                                               ; preds = %22
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FFALIGN(i32 %66, i32 128)
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @FFALIGN(i32 %70, i32 64)
  %72 = call %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_23__* %63, i32 %67, i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 2
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %120

80:                                               ; preds = %62
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = call i32 @map_frame_to_surface(%struct.TYPE_17__* %97, %struct.TYPE_20__* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %80
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %120

104:                                              ; preds = %80
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %108, align 8
  br label %109

109:                                              ; preds = %104, %51
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %3, align 8
  br label %120

120:                                              ; preds = %109, %103, %79, %47, %36, %21
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %121
}

declare dso_local i32 @clear_unused_frames(i32) #1

declare dso_local %struct.TYPE_22__* @get_free_frame(i32*) #1

declare dso_local i32 @IS_SYSTEM_MEMORY(i32) #1

declare dso_local %struct.TYPE_17__* @av_frame_alloc(...) #1

declare dso_local i32 @av_hwframe_get_buffer(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @map_frame_to_surface(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
