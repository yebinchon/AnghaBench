; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_receive_task.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_iec61883.c_iec61883_receive_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iec61883_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Raw1394 poll error occurred.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No more input data available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @iec61883_receive_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iec61883_receive_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iec61883_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.iec61883_data*
  store %struct.iec61883_data* %7, %struct.iec61883_data** %4, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %10 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %9, i32 0, i32 5
  %11 = call i32 @poll(%struct.TYPE_2__* %10, i32 1, i32 200)
  store i32 %11, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EAGAIN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = call i32 @av_log(i32* null, i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = call i32 @AVERROR(i32 %24)
  %26 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %27 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  store i8* null, i8** %2, align 8
  br label %67

28:                                               ; preds = %17, %13
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %34 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @POLLIN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %42 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @POLLPRI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %40, %32
  %49 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %50 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %52 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @raw1394_loop_iterate(i32 %53)
  br label %66

55:                                               ; preds = %40, %29
  %56 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %57 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 @av_log(i32* null, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.iec61883_data*, %struct.iec61883_data** %4, align 8
  %64 = getelementptr inbounds %struct.iec61883_data, %struct.iec61883_data* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  store i8* null, i8** %2, align 8
  br label %67

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %48
  store i8* null, i8** %2, align 8
  br label %67

67:                                               ; preds = %66, %60, %21
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i32 @poll(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @raw1394_loop_iterate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
