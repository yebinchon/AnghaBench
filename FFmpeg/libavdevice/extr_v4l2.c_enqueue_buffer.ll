; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_enqueue_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_enqueue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i32, i32 }
%struct.v4l2_buffer = type { i32 }

@VIDIOC_QBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ioctl(VIDIOC_QBUF): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_data*, %struct.v4l2_buffer*)* @enqueue_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_buffer(%struct.video_data* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.video_data*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.video_data* %0, %struct.video_data** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.video_data*, %struct.video_data** %3, align 8
  %7 = getelementptr inbounds %struct.video_data, %struct.video_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIDIOC_QBUF, align 4
  %10 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %11 = call i64 @v4l2_ioctl(i32 %8, i32 %9, %struct.v4l2_buffer* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @AVERROR(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @av_err2str(i32 %17)
  %19 = call i32 @av_log(i32* null, i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.video_data*, %struct.video_data** %3, align 8
  %22 = getelementptr inbounds %struct.video_data, %struct.video_data* %21, i32 0, i32 0
  %23 = call i32 @atomic_fetch_add(i32* %22, i32 1)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_buffer*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
