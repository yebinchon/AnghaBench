; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_ff_v4l2_context_set_status.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_ff_v4l2_context_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@VIDIOC_STREAMON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_context_set_status(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call %struct.TYPE_6__* @ctx_to_m2mctx(%struct.TYPE_5__* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @ioctl(i32 %14, i64 %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @VIDIOC_STREAMON, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ioctl(i32, i64, i32*) #1

declare dso_local %struct.TYPE_6__* @ctx_to_m2mctx(%struct.TYPE_5__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
