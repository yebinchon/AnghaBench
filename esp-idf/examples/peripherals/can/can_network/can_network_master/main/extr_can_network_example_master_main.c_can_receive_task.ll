; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_receive_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_receive_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32* }

@rx_task_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@RX_RECEIVE_PING_RESP = common dso_local global i64 0, align 8
@ID_SLAVE_PING_RESP = common dso_local global i64 0, align 8
@stop_ping_sem = common dso_local global i32 0, align 4
@ctrl_task_sem = common dso_local global i32 0, align 4
@RX_RECEIVE_DATA = common dso_local global i64 0, align 8
@NO_OF_DATA_MSGS = common dso_local global i64 0, align 8
@ID_SLAVE_DATA = common dso_local global i64 0, align 8
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Received data value %d\00", align 1
@RX_RECEIVE_STOP_RESP = common dso_local global i64 0, align 8
@ID_SLAVE_STOP_RESP = common dso_local global i64 0, align 8
@RX_TASK_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_receive_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_receive_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  br label %10

10:                                               ; preds = %1, %105
  %11 = load i32, i32* @rx_task_queue, align 4
  %12 = load i32, i32* @portMAX_DELAY, align 4
  %13 = call i32 @xQueueReceive(i32 %11, i64* %3, i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @RX_RECEIVE_PING_RESP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %30
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @can_receive(%struct.TYPE_3__* %4, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ID_SLAVE_PING_RESP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @stop_ping_sem, align 4
  %27 = call i32 @xSemaphoreGive(i32 %26)
  %28 = load i32, i32* @ctrl_task_sem, align 4
  %29 = call i32 @xSemaphoreGive(i32 %28)
  br label %31

30:                                               ; preds = %18
  br label %18

31:                                               ; preds = %25
  br label %105

32:                                               ; preds = %10
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @RX_RECEIVE_DATA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @NO_OF_DATA_MSGS, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load i32, i32* @portMAX_DELAY, align 4
  %43 = call i32 @can_receive(%struct.TYPE_3__* %6, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ID_SLAVE_DATA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 8
  %63 = shl i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %49

70:                                               ; preds = %49
  %71 = load i32, i32* @EXAMPLE_TAG, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %70, %41
  br label %37

77:                                               ; preds = %37
  %78 = load i32, i32* @ctrl_task_sem, align 4
  %79 = call i32 @xSemaphoreGive(i32 %78)
  br label %104

80:                                               ; preds = %32
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @RX_RECEIVE_STOP_RESP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %95
  %86 = load i32, i32* @portMAX_DELAY, align 4
  %87 = call i32 @can_receive(%struct.TYPE_3__* %9, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ID_SLAVE_STOP_RESP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ctrl_task_sem, align 4
  %94 = call i32 @xSemaphoreGive(i32 %93)
  br label %96

95:                                               ; preds = %85
  br label %85

96:                                               ; preds = %92
  br label %103

97:                                               ; preds = %80
  %98 = load i64, i64* %3, align 8
  %99 = load i64, i64* @RX_TASK_EXIT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %106

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %96
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %31
  br label %10

106:                                              ; preds = %101
  %107 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xQueueReceive(i32, i64*, i32) #1

declare dso_local i32 @can_receive(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
