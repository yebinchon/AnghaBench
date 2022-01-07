; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_add_display_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_add_display_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@ACAMERA_LENS_FACING_FRONT = common dso_local global i64 0, align 8
@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @add_display_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_display_matrix(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [9 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @av_display_rotation_set(i32* %12, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACAMERA_LENS_FACING_FRONT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %24 = call i32 @av_display_matrix_flip(i32* %23, i32 1, i32 0)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @AV_PKT_DATA_DISPLAYMATRIX, align 4
  %28 = call i32* @av_stream_new_side_data(i32* %26, i32 %27, i32 36)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %37 = call i32 @memcpy(i32* %35, i32* %36, i32 36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @av_display_rotation_set(i32*, i32) #1

declare dso_local i32 @av_display_matrix_flip(i32*, i32, i32) #1

declare dso_local i32* @av_stream_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
