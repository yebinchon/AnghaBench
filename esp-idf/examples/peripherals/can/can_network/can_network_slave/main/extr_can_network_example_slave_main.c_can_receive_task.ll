; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_receive_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_receive_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@rx_task_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@RX_RECEIVE_PING = common dso_local global i64 0, align 8
@ID_MASTER_PING = common dso_local global i64 0, align 8
@ctrl_task_sem = common dso_local global i32 0, align 4
@RX_RECEIVE_START_CMD = common dso_local global i64 0, align 8
@ID_MASTER_START_CMD = common dso_local global i64 0, align 8
@RX_RECEIVE_STOP_CMD = common dso_local global i64 0, align 8
@ID_MASTER_STOP_CMD = common dso_local global i64 0, align 8
@stop_data_sem = common dso_local global i32 0, align 4
@RX_TASK_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_receive_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_receive_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  br label %7

7:                                                ; preds = %1, %71
  %8 = load i32, i32* @rx_task_queue, align 4
  %9 = load i32, i32* @portMAX_DELAY, align 4
  %10 = call i32 @xQueueReceive(i32 %8, i64* %3, i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @RX_RECEIVE_PING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %25
  %16 = load i32, i32* @portMAX_DELAY, align 4
  %17 = call i32 @can_receive(%struct.TYPE_3__* %4, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ID_MASTER_PING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ctrl_task_sem, align 4
  %24 = call i32 @xSemaphoreGive(i32 %23)
  br label %26

25:                                               ; preds = %15
  br label %15

26:                                               ; preds = %22
  br label %71

27:                                               ; preds = %7
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @RX_RECEIVE_START_CMD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %42
  %33 = load i32, i32* @portMAX_DELAY, align 4
  %34 = call i32 @can_receive(%struct.TYPE_3__* %5, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ID_MASTER_START_CMD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ctrl_task_sem, align 4
  %41 = call i32 @xSemaphoreGive(i32 %40)
  br label %43

42:                                               ; preds = %32
  br label %32

43:                                               ; preds = %39
  br label %70

44:                                               ; preds = %27
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @RX_RECEIVE_STOP_CMD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %61
  %50 = load i32, i32* @portMAX_DELAY, align 4
  %51 = call i32 @can_receive(%struct.TYPE_3__* %6, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ID_MASTER_STOP_CMD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* @stop_data_sem, align 4
  %58 = call i32 @xSemaphoreGive(i32 %57)
  %59 = load i32, i32* @ctrl_task_sem, align 4
  %60 = call i32 @xSemaphoreGive(i32 %59)
  br label %62

61:                                               ; preds = %49
  br label %49

62:                                               ; preds = %56
  br label %69

63:                                               ; preds = %44
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* @RX_TASK_EXIT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %72

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %62
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %26
  br label %7

72:                                               ; preds = %67
  %73 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xQueueReceive(i32, i64*, i32) #1

declare dso_local i32 @can_receive(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
