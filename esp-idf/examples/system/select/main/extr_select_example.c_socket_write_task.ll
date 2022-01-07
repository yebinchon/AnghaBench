; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_socket_write_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_socket_write_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Socket message S%d\00", align 1
@socket_fd = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Socket write error\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%d bytes were written to socket: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @socket_write_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_write_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @socket_init()
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %9 = sdiv i32 3000, %8
  %10 = call i32 @vTaskDelay(i32 %9)
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @snprintf(i8* %11, i32 20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @socket_fd, align 4
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @write(i32 %14, i8* %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %29

24:                                               ; preds = %7
  %25 = load i32, i32* @TAG, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %28 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7
}

declare dso_local i32 @socket_init(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
