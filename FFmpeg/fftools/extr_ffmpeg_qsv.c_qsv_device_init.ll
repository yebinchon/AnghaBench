; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_qsv.c_qsv_device_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_qsv.c_qsv_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@qsv_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"child_device\00", align 1
@hw_device_ctx = common dso_local global i32 0, align 4
@AV_HWDEVICE_TYPE_QSV = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error creating a QSV device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qsv_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_device_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %5, align 8
  %6 = load i64, i64* @qsv_device, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* @qsv_device, align 8
  %10 = call i32 @av_dict_set(i32** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* @AV_HWDEVICE_TYPE_QSV, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @av_hwdevice_ctx_create(i32* @hw_device_ctx, i32 %17, i32 %20, i32* %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 @av_log(i32* null, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %29

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @av_dict_free(i32** %5)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @av_dict_set(i32**, i8*, i64, i32) #1

declare dso_local i32 @av_hwdevice_ctx_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
