; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_successful_response_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_successful_response_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"HTTP/%u.%u %u\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"HTTP: Invalid response status line:\0A%s\00", align 1
@HTTP_MAJOR_VERSION = common dso_local global i32 0, align 4
@HTTP_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"HTTP: Unexpected response HTTP version: %u.%u\00", align 1
@HTTP_STATUS_OK = common dso_local global i32 0, align 4
@HTTP_STATUS_PARTIAL_CONTENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"HTTP: Response status unsuccessful:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @io_http_successful_response_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_http_successful_response_status(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @sscanf(i8* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5, i32* %6)
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  store i32 0, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HTTP_MAJOR_VERSION, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HTTP_MINOR_VERSION, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23)
  store i32 0, i32* %2, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HTTP_STATUS_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HTTP_STATUS_PARTIAL_CONTENT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %29, %25
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %21, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
