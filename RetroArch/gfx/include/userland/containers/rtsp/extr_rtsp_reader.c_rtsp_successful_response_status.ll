; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_successful_response_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_successful_response_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"RTSP/%u.%u %u\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RTSP: Invalid response status line:\0A%s\00", align 1
@RTSP_MAJOR_VERSION = common dso_local global i32 0, align 4
@RTSP_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"RTSP: Unexpected response RTSP version: %u.%u\00", align 1
@RTSP_STATUS_OK = common dso_local global i32 0, align 4
@RTSP_STATUS_MULTIPLE_CHOICES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"RTSP: Response status unsuccessful:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @rtsp_successful_response_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_successful_response_status(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RTSP_MAJOR_VERSION, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTSP_MINOR_VERSION, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RTSP_STATUS_OK, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RTSP_STATUS_MULTIPLE_CHOICES, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %24, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
