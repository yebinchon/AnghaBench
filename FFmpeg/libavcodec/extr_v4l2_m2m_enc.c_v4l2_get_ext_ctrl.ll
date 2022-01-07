; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m_enc.c_v4l2_get_ext_ctrl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m_enc.c_v4l2_get_ext_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.v4l2_ext_controls = type { i32, %struct.v4l2_ext_control*, i32, %struct.TYPE_4__ }
%struct.v4l2_ext_control = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i32 0, align 4
@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Failed to set %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i8*)* @v4l2_get_ext_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_get_ext_ctrl(%struct.TYPE_5__* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_ext_controls, align 8
  %11 = alloca %struct.v4l2_ext_control, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = bitcast %struct.v4l2_ext_controls* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = bitcast %struct.v4l2_ext_control* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = load i32, i32* @V4L2_CTRL_CLASS_MPEG, align 4
  %16 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %10, i32 0, i32 1
  store %struct.v4l2_ext_control* %11, %struct.v4l2_ext_control** %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %10, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %11, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.v4l2_ext_controls* %10)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AV_LOG_WARNING, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @av_log(i32 %31, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_ext_controls*) #2

declare dso_local i32 @av_log(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
