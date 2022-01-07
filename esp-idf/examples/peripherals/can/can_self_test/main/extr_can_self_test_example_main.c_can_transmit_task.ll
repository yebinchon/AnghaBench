; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_self_test/main/extr_can_self_test_example_main.c_can_transmit_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_self_test/main/extr_can_self_test_example_main.c_can_transmit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@CAN_MSG_FLAG_SELF = common dso_local global i32 0, align 4
@MSG_ID = common dso_local global i32 0, align 4
@NO_OF_ITERS = common dso_local global i32 0, align 4
@tx_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NO_OF_MSGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_transmit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_transmit_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %9 = load i32, i32* @CAN_MSG_FLAG_SELF, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %11 = load i32, i32* @MSG_ID, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NO_OF_ITERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32, i32* @tx_sem, align 4
  %18 = load i32, i32* @portMAX_DELAY, align 4
  %19 = call i32 @xSemaphoreTake(i32 %17, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NO_OF_MSGS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @portMAX_DELAY, align 4
  %30 = call i32 @can_transmit(%struct.TYPE_3__* %3, i32 %29)
  %31 = call i32 @ESP_ERROR_CHECK(i32 %30)
  %32 = call i32 @pdMS_TO_TICKS(i32 10)
  %33 = call i32 @vTaskDelay(i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %20

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %12

41:                                               ; preds = %12
  %42 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_transmit(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
