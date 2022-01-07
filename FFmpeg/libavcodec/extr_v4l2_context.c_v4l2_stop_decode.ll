; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_stop_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_stop_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_decoder_cmd = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@V4L2_DEC_CMD_STOP = common dso_local global i32 0, align 4
@VIDIOC_DECODER_CMD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @v4l2_stop_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_stop_decode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.v4l2_decoder_cmd, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %4, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_decoder_cmd, %struct.v4l2_decoder_cmd* %4, i32 0, i32 1
  %8 = load i32, i32* @V4L2_DEC_CMD_STOP, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_2__* @ctx_to_m2mctx(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VIDIOC_DECODER_CMD, align 4
  %14 = call i32 @ioctl(i32 %12, i32 %13, %struct.v4l2_decoder_cmd* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOTTY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %24 = call i32 @ff_v4l2_context_set_status(i32* %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @AVERROR(i64 %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_decoder_cmd*) #1

declare dso_local %struct.TYPE_2__* @ctx_to_m2mctx(i32*) #1

declare dso_local i32 @ff_v4l2_context_set_status(i32*, i32) #1

declare dso_local i32 @AVERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
