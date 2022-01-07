; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_video.c_ff_default_get_video_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_video.c_ff_default_get_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@av_buffer_allocz = common dso_local global i32 0, align 4
@BUFFER_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ff_default_get_video_buffer(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_11__*
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %20
  %34 = call %struct.TYPE_12__* (...) @av_frame_alloc()
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %135

38:                                               ; preds = %33
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %43 = call i32 @av_hwframe_get_buffer(%struct.TYPE_14__* %41, %struct.TYPE_12__* %42, i32 0)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 @av_frame_free(%struct.TYPE_12__** %14)
  br label %48

48:                                               ; preds = %46, %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %4, align 8
  br label %135

50:                                               ; preds = %20, %3
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @av_buffer_allocz, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @BUFFER_ALIGN, align 4
  %63 = call i8* @ff_frame_pool_video_init(i32 %56, i32 %57, i32 %58, i64 %61, i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %135

71:                                               ; preds = %55
  br label %120

72:                                               ; preds = %50
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @ff_frame_pool_get_video_config(i8* %75, i32* %9, i32* %10, i32* %12, i32* %11)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %135

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %98, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @BUFFER_ALIGN, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %94, %87, %83, %79
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = bitcast i8** %100 to i32**
  %102 = call i32 @ff_frame_pool_uninit(i32** %101)
  %103 = load i32, i32* @av_buffer_allocz, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @BUFFER_ALIGN, align 4
  %110 = call i8* @ff_frame_pool_video_init(i32 %103, i32 %104, i32 %105, i64 %108, i32 %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %98
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %135

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %71
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = call %struct.TYPE_12__* @ff_frame_pool_get(i8* %123)
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %8, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %126 = icmp ne %struct.TYPE_12__* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %135

128:                                              ; preds = %120
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %4, align 8
  br label %135

135:                                              ; preds = %128, %127, %117, %78, %70, %48, %37
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %136
}

declare dso_local %struct.TYPE_12__* @av_frame_alloc(...) #1

declare dso_local i32 @av_hwframe_get_buffer(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_12__**) #1

declare dso_local i8* @ff_frame_pool_video_init(i32, i32, i32, i64, i32) #1

declare dso_local i64 @ff_frame_pool_get_video_config(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ff_frame_pool_uninit(i32**) #1

declare dso_local %struct.TYPE_12__* @ff_frame_pool_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
