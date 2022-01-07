; ModuleID = '/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_preprocess_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_preprocess_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, i32, %struct.scaler_ctx }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_buffer = type { i64, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"[V4L2]: VIDIOC_DQBUF.\0A\00", align 1
@VIDIOC_QBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"[V4L2]: VIDIOC_QBUF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @preprocess_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preprocess_image(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scaler_ctx*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.v4l2_buffer, align 8
  store i8* %0, i8** %3, align 8
  store %struct.scaler_ctx* null, %struct.scaler_ctx** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = bitcast %struct.v4l2_buffer* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %11 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %13 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VIDIOC_DQBUF, align 4
  %18 = call i32 @xioctl(i32 %16, i32 %17, %struct.v4l2_buffer* %6)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @errno, align 4
  switch i32 %21, label %23 [
    i32 128, label %22
  ]

22:                                               ; preds = %20
  br label %25

23:                                               ; preds = %20
  %24 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %22
  store i32 0, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @retro_assert(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store %struct.scaler_ctx* %36, %struct.scaler_ctx** %4, align 8
  %37 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @scaler_ctx_scale_direct(%struct.scaler_ctx* %37, i32 %40, i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VIDIOC_QBUF, align 4
  %55 = call i32 @xioctl(i32 %53, i32 %54, %struct.v4l2_buffer* %6)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %26
  %58 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %26
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xioctl(i32, i32, %struct.v4l2_buffer*) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i32 @retro_assert(i32) #2

declare dso_local i32 @scaler_ctx_scale_direct(%struct.scaler_ctx*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
