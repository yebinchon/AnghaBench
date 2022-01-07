; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_release_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_mmap_release_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_buffer = type { i32, i32, i32, i32 }
%struct.buff_data = type { i32, %struct.video_data* }
%struct.video_data = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @mmap_release_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_release_buffer(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_buffer, align 4
  %6 = alloca %struct.buff_data*, align 8
  %7 = alloca %struct.video_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = bitcast %struct.v4l2_buffer* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.buff_data*
  store %struct.buff_data* %10, %struct.buff_data** %6, align 8
  %11 = load %struct.buff_data*, %struct.buff_data** %6, align 8
  %12 = getelementptr inbounds %struct.buff_data, %struct.buff_data* %11, i32 0, i32 1
  %13 = load %struct.video_data*, %struct.video_data** %12, align 8
  store %struct.video_data* %13, %struct.video_data** %7, align 8
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %15 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.buff_data*, %struct.buff_data** %6, align 8
  %19 = getelementptr inbounds %struct.buff_data, %struct.buff_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.buff_data*, %struct.buff_data** %6, align 8
  %23 = call i32 @av_free(%struct.buff_data* %22)
  %24 = load %struct.video_data*, %struct.video_data** %7, align 8
  %25 = call i32 @enqueue_buffer(%struct.video_data* %24, %struct.v4l2_buffer* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_free(%struct.buff_data*) #2

declare dso_local i32 @enqueue_buffer(%struct.video_data*, %struct.v4l2_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
