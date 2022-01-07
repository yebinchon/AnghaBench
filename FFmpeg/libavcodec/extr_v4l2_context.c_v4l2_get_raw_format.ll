; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_get_raw_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_get_raw_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @v4l2_get_raw_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_get_raw_format(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_fmtdesc, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i32 @memset(%struct.v4l2_fmtdesc* %7, i32 0, i32 12)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @v4l2_try_raw_format(%struct.TYPE_6__* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %58

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %2
  br label %29

29:                                               ; preds = %51, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = call %struct.TYPE_7__* @ctx_to_m2mctx(%struct.TYPE_6__* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %35 = call i32 @ioctl(i32 %33, i32 %34, %struct.v4l2_fmtdesc* %7)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %45 = call i32 @ff_v4l2_format_v4l2_to_avfmt(i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @v4l2_try_raw_format(%struct.TYPE_6__* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %29

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %38, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.v4l2_fmtdesc*, i32, i32) #1

declare dso_local i32 @v4l2_try_raw_format(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_fmtdesc*) #1

declare dso_local %struct.TYPE_7__* @ctx_to_m2mctx(%struct.TYPE_6__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_v4l2_format_v4l2_to_avfmt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
