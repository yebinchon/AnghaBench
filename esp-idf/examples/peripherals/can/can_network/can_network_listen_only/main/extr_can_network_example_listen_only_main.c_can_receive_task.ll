; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_listen_only/main/extr_can_network_example_listen_only_main.c_can_receive_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_listen_only/main/extr_can_network_example_listen_only_main.c_can_receive_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@rx_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NO_OF_ITERS = common dso_local global i64 0, align 8
@ID_MASTER_PING = common dso_local global i64 0, align 8
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Received master ping\00", align 1
@ID_SLAVE_PING_RESP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Received slave ping response\00", align 1
@ID_MASTER_START_CMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Received master start command\00", align 1
@ID_SLAVE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Received data value %d\00", align 1
@ID_MASTER_STOP_CMD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Received master stop command\00", align 1
@ID_SLAVE_STOP_RESP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Received slave stop response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_receive_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_receive_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @rx_sem, align 4
  %10 = load i32, i32* @portMAX_DELAY, align 4
  %11 = call i32 @xSemaphoreTake(i32 %9, i32 %10)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %103, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NO_OF_ITERS, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %104

16:                                               ; preds = %12
  %17 = load i32, i32* @portMAX_DELAY, align 4
  %18 = call i32 @can_receive(%struct.TYPE_3__* %6, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ID_MASTER_PING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EXAMPLE_TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %94

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ID_SLAVE_PING_RESP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EXAMPLE_TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %93

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ID_MASTER_START_CMD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EXAMPLE_TAG, align 4
  %41 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %92

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ID_SLAVE_DATA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %60, 8
  %62 = shl i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load i32, i32* @EXAMPLE_TAG, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  br label %91

73:                                               ; preds = %42
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ID_MASTER_STOP_CMD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EXAMPLE_TAG, align 4
  %80 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %90

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ID_SLAVE_STOP_RESP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EXAMPLE_TAG, align 4
  %88 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %39
  br label %93

93:                                               ; preds = %92, %31
  br label %94

94:                                               ; preds = %93, %23
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %5, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %5, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %97, %94
  br label %12

104:                                              ; preds = %12
  %105 = load i32, i32* @rx_sem, align 4
  %106 = call i32 @xSemaphoreGive(i32 %105)
  %107 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @can_receive(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
