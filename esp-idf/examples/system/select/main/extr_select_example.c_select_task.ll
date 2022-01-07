; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_select_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/select/main/extr_select_example.c_select_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@__const.select_task.tv = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@uart_fd = common dso_local global i32 0, align 4
@socket_fd = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Select failed: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Timeout has been reached and nothing has been received\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"UART1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @select_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %1, %36
  %7 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.timeval* @__const.select_task.tv to i8*), i64 8, i1 false)
  %8 = call i32 @FD_ZERO(i32* %4)
  %9 = load i32, i32* @uart_fd, align 4
  %10 = call i32 @FD_SET(i32 %9, i32* %4)
  %11 = load i32, i32* @socket_fd, align 4
  %12 = call i32 @FD_SET(i32 %11, i32* %4)
  %13 = load i32, i32* @uart_fd, align 4
  %14 = load i32, i32* @socket_fd, align 4
  %15 = call i64 @MAX(i32 %13, i32 %14)
  %16 = add nsw i64 %15, 1
  %17 = call i32 @select(i64 %16, i32* %4, i32* null, i32* null, %struct.timeval* %5)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @TAG, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %36

24:                                               ; preds = %6
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @socket_fd, align 4
  %32 = call i32 @check_and_print(i32 %31, i32* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @uart_fd, align 4
  %34 = call i32 @check_and_print(i32 %33, i32* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %20
  br label %6
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i64 @MAX(i32, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #2

declare dso_local i32 @ESP_LOGI(i32, i8*) #2

declare dso_local i32 @check_and_print(i32, i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
