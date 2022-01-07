; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/esp_event/default_event_loop/main/extr_main.c_get_id_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/esp_event/default_event_loop/main/extr_main.c_get_id_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TIMER_EVENTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"TIMER_EVENT_STARTED\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TIMER_EVENT_EXPIRY\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TIMER_EVENT_STOPPED\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"TASK_ITERATION_EVENT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @get_id_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_id_string(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @TIMER_EVENTS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %14 [
    i32 129, label %11
    i32 130, label %12
    i32 128, label %13
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %14

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %9, %13, %12, %11
  br label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i8*, i8** %5, align 8
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
