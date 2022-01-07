; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/esp_app_trace/test/sysview/extr_blink.c_blink_task2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/esp_app_trace/test/sysview/extr_blink.c_blink_task2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portMAX_DELAY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to wait for main task!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Alloced 65 bytes @ %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Alloced 97 bytes @ %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Freed @ %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Alloced 11 bytes @ %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Alloced 24 bytes @ %p\0A\00", align 1
@eNoAction = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to notify main task!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blink_task2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %43
  %9 = load i32, i32* @portMAX_DELAY, align 4
  %10 = call i64 @xTaskNotifyWait(i32 0, i32 0, i32* null, i32 %9)
  %11 = load i64, i64* @pdPASS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %44

15:                                               ; preds = %8
  %16 = call i8* @malloc(i32 65)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i8* @malloc(i32 97)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i8* @malloc(i32 11)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = call i8* @malloc(i32 24)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @eNoAction, align 4
  %38 = call i64 @xTaskNotify(i32 %36, i32 0, i32 %37)
  %39 = load i64, i64* @pdPASS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %44

43:                                               ; preds = %15
  br label %8

44:                                               ; preds = %41, %13
  ret void
}

declare dso_local i64 @xTaskNotifyWait(i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @xTaskNotify(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
