; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_scale_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_scale_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.record_video_data = type { i64, i64, i32, i32 }

@SWS_BILINEAR = common dso_local global i32 0, align 4
@SWS_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.record_video_data*)* @ffmpeg_scale_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_scale_input(%struct.TYPE_9__* %0, %struct.record_video_data* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.record_video_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.record_video_data* %1, %struct.record_video_data** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %12 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %21 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i1 [ true, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %24
  %33 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %34 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %41 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %44 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %32
  %65 = load i32, i32* @SWS_BILINEAR, align 4
  br label %68

66:                                               ; preds = %32
  %67 = load i32, i32* @SWS_POINT, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = call i32 @sws_getCachedContext(i32 %39, i64 %42, i64 %45, i32 %49, i64 %53, i64 %57, i32 %61, i32 %69, i32* null, i32* null, i32* null)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %79 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %78, i32 0, i32 3
  %80 = bitcast i32* %79 to i32**
  %81 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %82 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @sws_scale(i32 %77, i32** %80, i32* %6, i32 0, i64 %83, i32* %89, i32* %95)
  br label %139

97:                                               ; preds = %24
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %110 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %129 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %132 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.record_video_data*, %struct.record_video_data** %4, align 8
  %135 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @video_frame_record_scale(i32* %100, i32 %108, i32 %111, i64 %115, i64 %119, i32 %127, i64 %130, i64 %133, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %97, %68
  ret void
}

declare dso_local i32 @sws_getCachedContext(i32, i64, i64, i32, i64, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @sws_scale(i32, i32**, i32*, i32, i64, i32*, i32*) #1

declare dso_local i32 @video_frame_record_scale(i32*, i32, i32, i64, i64, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
