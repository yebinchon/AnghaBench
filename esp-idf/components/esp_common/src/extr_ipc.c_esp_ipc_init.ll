; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_ipc.c_esp_ipc_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_common/src/extr_ipc.c_esp_ipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ipc%d\00", align 1
@s_ipc_mutex = common dso_local global i32* null, align 8
@s_ipc_ack = common dso_local global i8** null, align 8
@s_ipc_sem = common dso_local global i8** null, align 8
@ipc_task = common dso_local global i32 0, align 4
@CONFIG_ESP_IPC_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@s_ipc_task_handle = common dso_local global i32* null, align 8
@pdTRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @esp_ipc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_ipc_init() #0 {
  %1 = alloca [15 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %46, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @portNUM_PROCESSORS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %4
  %9 = getelementptr inbounds [15 x i8], [15 x i8]* %1, i64 0, i64 0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @snprintf(i8* %9, i32 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 (...) @xSemaphoreCreateMutex()
  %13 = load i32*, i32** @s_ipc_mutex, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = call i8* (...) @xSemaphoreCreateBinary()
  %18 = load i8**, i8*** @s_ipc_ack, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %17, i8** %21, align 8
  %22 = call i8* (...) @xSemaphoreCreateBinary()
  %23 = load i8**, i8*** @s_ipc_sem, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* @ipc_task, align 4
  %28 = getelementptr inbounds [15 x i8], [15 x i8]* %1, i64 0, i64 0
  %29 = load i32, i32* @CONFIG_ESP_IPC_TASK_STACK_SIZE, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load i64, i64* @configMAX_PRIORITIES, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load i32*, i32** @s_ipc_task_handle, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @xTaskCreatePinnedToCore(i32 %27, i8* %28, i32 %29, i8* %32, i64 %34, i32* %38, i32 %39)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @pdTRUE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %8
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %4

49:                                               ; preds = %4
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xSemaphoreCreateMutex(...) #1

declare dso_local i8* @xSemaphoreCreateBinary(...) #1

declare dso_local i64 @xTaskCreatePinnedToCore(i32, i8*, i32, i8*, i64, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
