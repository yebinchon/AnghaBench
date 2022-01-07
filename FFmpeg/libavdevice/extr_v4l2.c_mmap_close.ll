; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i32, i32*, i32*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_data*)* @mmap_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_close(%struct.video_data* %0) #0 {
  %2 = alloca %struct.video_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.video_data* %0, %struct.video_data** %2, align 8
  %5 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.video_data*, %struct.video_data** %2, align 8
  %7 = getelementptr inbounds %struct.video_data, %struct.video_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %10 = call i32 @v4l2_ioctl(i32 %8, i32 %9, i32* %3)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.video_data*, %struct.video_data** %2, align 8
  %14 = getelementptr inbounds %struct.video_data, %struct.video_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.video_data*, %struct.video_data** %2, align 8
  %19 = getelementptr inbounds %struct.video_data, %struct.video_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.video_data*, %struct.video_data** %2, align 8
  %26 = getelementptr inbounds %struct.video_data, %struct.video_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_munmap(i32 %24, i32 %31)
  br label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.video_data*, %struct.video_data** %2, align 8
  %38 = getelementptr inbounds %struct.video_data, %struct.video_data* %37, i32 0, i32 2
  %39 = call i32 @av_freep(i32** %38)
  %40 = load %struct.video_data*, %struct.video_data** %2, align 8
  %41 = getelementptr inbounds %struct.video_data, %struct.video_data* %40, i32 0, i32 1
  %42 = call i32 @av_freep(i32** %41)
  ret void
}

declare dso_local i32 @v4l2_ioctl(i32, i32, i32*) #1

declare dso_local i32 @v4l2_munmap(i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
