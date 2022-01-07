; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_video_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_video_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.record_video_data = type { i32 }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.record_video_data*)* @ffmpeg_push_video_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_push_video_thread(%struct.TYPE_13__* %0, %struct.record_video_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.record_video_data*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.record_video_data* %1, %struct.record_video_data** %5, align 8
  %7 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %8 = getelementptr inbounds %struct.record_video_data, %struct.record_video_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.record_video_data*, %struct.record_video_data** %5, align 8
  %14 = call i32 @ffmpeg_scale_input(%struct.TYPE_13__* %12, %struct.record_video_data* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = call i32 @encode_video(%struct.TYPE_13__* %25, %struct.TYPE_14__* %6, %struct.TYPE_15__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %52

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @av_interleaved_write_frame(i32 %41, %struct.TYPE_14__* %6)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %44, %32
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ffmpeg_scale_input(%struct.TYPE_13__*, %struct.record_video_data*) #1

declare dso_local i32 @encode_video(%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @av_interleaved_write_frame(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
