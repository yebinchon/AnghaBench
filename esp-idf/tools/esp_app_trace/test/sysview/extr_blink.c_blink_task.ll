; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/esp_app_trace/test/sysview/extr_blink.c_blink_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/esp_app_trace/test/sysview/extr_blink.c_blink_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to init heap trace!\0A\00", align 1
@blink_task2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"blink_task2\00", align 1
@HEAP_TRACE_ALL = common dso_local global i32 0, align 4
@eNoAction = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to notify slave task!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Alloced 64 bytes @ %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Alloced 96 bytes @ %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Freed @ %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Alloced 10 bytes @ %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Alloced 23 bytes @ %p\0A\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to wait for slave task!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blink_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i64 (...) @heap_trace_init_tohost()
  %7 = load i64, i64* @ESP_OK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %53

11:                                               ; preds = %1
  %12 = call i32 (...) @xTaskGetCurrentTaskHandle()
  %13 = call i32 @xTaskCreatePinnedToCore(i32* @blink_task2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32 %12, i32 5, i32* %3, i32 1)
  br label %14

14:                                               ; preds = %11, %51
  %15 = load i32, i32* @HEAP_TRACE_ALL, align 4
  %16 = call i32 @heap_trace_start(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @eNoAction, align 4
  %19 = call i64 @xTaskNotify(i32 %17, i32 0, i32 %18)
  %20 = load i64, i64* @pdPASS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %53

24:                                               ; preds = %14
  %25 = call i8* @malloc(i32 64)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = call i8* @malloc(i32 96)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = call i8* @malloc(i32 10)
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %36)
  %38 = call i8* @malloc(i32 23)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @portMAX_DELAY, align 4
  %46 = call i64 @xTaskNotifyWait(i32 0, i32 0, i32* null, i32 %45)
  %47 = load i64, i64* @pdPASS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %53

51:                                               ; preds = %24
  %52 = call i32 (...) @heap_trace_stop()
  br label %14

53:                                               ; preds = %49, %22, %9
  ret void
}

declare dso_local i64 @heap_trace_init_tohost(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32*, i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @xTaskGetCurrentTaskHandle(...) #1

declare dso_local i32 @heap_trace_start(i32) #1

declare dso_local i64 @xTaskNotify(i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @xTaskNotifyWait(i32, i32, i32*, i32) #1

declare dso_local i32 @heap_trace_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
