; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_select/main/extr_uart_select_example_main.c_uart_select_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_select/main/extr_uart_select_example_main.c_uart_select_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@UART_NUM_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"/dev/uart/0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot open UART\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@__const.uart_select_task.tv = private unnamed_addr constant %struct.timeval { i32 5, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Select failed: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Timeout has been reached and nothing has been received\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Received: %c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"UART read error\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"No FD has been set in select()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uart_select_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_select_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 115200, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %11 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %13 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %15 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %17 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* @UART_NUM_0, align 4
  %19 = call i32 @uart_param_config(i32 %18, %struct.TYPE_3__* %3)
  %20 = load i32, i32* @UART_NUM_0, align 4
  %21 = call i32 @uart_driver_install(i32 %20, i32 2048, i32 0, i32 0, i32* null, i32 0)
  br label %22

22:                                               ; preds = %1, %26, %77
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %30 = sdiv i32 5000, %29
  %31 = call i32 @vTaskDelay(i32 %30)
  br label %22

32:                                               ; preds = %22
  %33 = call i32 @esp_vfs_dev_uart_use_driver(i32 0)
  br label %34

34:                                               ; preds = %32, %76
  %35 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.timeval* @__const.uart_select_task.tv to i8*), i64 8, i1 false)
  %36 = call i32 @FD_ZERO(i32* %6)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @FD_SET(i32 %37, i32* %6)
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @select(i32 %40, i32* %6, i32* null, i32* null, %struct.timeval* %7)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @TAG, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %77

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %75

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @FD_ISSET(i32 %55, i32* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @read(i32 %59, i8* %8, i32 1)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @TAG, align 4
  %64 = load i8, i8* %8, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %77

70:                                               ; preds = %62
  br label %74

71:                                               ; preds = %54
  %72 = load i32, i32* @TAG, align 4
  %73 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %77

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75
  br label %34

77:                                               ; preds = %71, %67, %44
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @close(i32 %78)
  br label %22
}

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_vfs_dev_uart_use_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
