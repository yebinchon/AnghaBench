; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_echo_rs485/main/extr_rs485_example.c_echo_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/uart/uart_echo_rs485/main/extr_rs485_example.c_echo_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ECHO_UART_PORT = common dso_local global i32 0, align 4
@UART_HW_FLOWCTRL_DISABLE = common dso_local global i32 0, align 4
@UART_STOP_BITS_1 = common dso_local global i32 0, align 4
@UART_PARITY_DISABLE = common dso_local global i32 0, align 4
@UART_DATA_8_BITS = common dso_local global i32 0, align 4
@BAUD_RATE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Start RS485 application test and configure UART.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"UART set pins, mode and install driver.\00", align 1
@ECHO_TEST_TXD = common dso_local global i32 0, align 4
@ECHO_TEST_RXD = common dso_local global i32 0, align 4
@ECHO_TEST_RTS = common dso_local global i32 0, align 4
@ECHO_TEST_CTS = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@UART_MODE_RS485_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"UART start recieve loop.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Start RS485 UART test.\0D\0A\00", align 1
@PACKET_READ_TICS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__const.echo_task.prefix = private unnamed_addr constant [18 x i8] c"RS485 Received: [\00", align 16
@.str.5 = private unnamed_addr constant [19 x i8] c"Received %u bytes:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%.2X \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"] \0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"]\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @echo_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @echo_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [18 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @ECHO_UART_PORT, align 4
  store i32 %9, i32* %3, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 122, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %12 = load i32, i32* @UART_HW_FLOWCTRL_DISABLE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %14 = load i32, i32* @UART_STOP_BITS_1, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %16 = load i32, i32* @UART_PARITY_DISABLE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %18 = load i32, i32* @UART_DATA_8_BITS, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %20 = load i32, i32* @BAUD_RATE, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i32, i32* @TAG, align 4
  %22 = load i32, i32* @ESP_LOG_INFO, align 4
  %23 = call i32 @esp_log_level_set(i32 %21, i32 %22)
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @uart_param_config(i32 %26, %struct.TYPE_3__* %4)
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ECHO_TEST_TXD, align 4
  %32 = load i32, i32* @ECHO_TEST_RXD, align 4
  %33 = load i32, i32* @ECHO_TEST_RTS, align 4
  %34 = load i32, i32* @ECHO_TEST_CTS, align 4
  %35 = call i32 @uart_set_pin(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @BUF_SIZE, align 4
  %38 = mul nsw i32 %37, 2
  %39 = call i32 @uart_driver_install(i32 %36, i32 %38, i32 0, i32 0, i32* null, i32 0)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @UART_MODE_RS485_HALF_DUPLEX, align 4
  %42 = call i32 @uart_set_mode(i32 %40, i32 %41)
  %43 = load i32, i32* @BUF_SIZE, align 4
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* @TAG, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @uart_write_bytes(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 24)
  br label %50

50:                                               ; preds = %1, %107
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @BUF_SIZE, align 4
  %54 = load i32, i32* @PACKET_READ_TICS, align 4
  %55 = call i32 @uart_read_bytes(i32 %51, i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @uart_write_bytes(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %61 = bitcast [18 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.echo_task.prefix, i32 0, i32 0), i64 18, i1 false)
  %62 = load i32, i32* %3, align 4
  %63 = getelementptr inbounds [18 x i8], [18 x i8]* %7, i64 0, i64 0
  %64 = call i32 @uart_write_bytes(i32 %62, i8* %63, i32 17)
  %65 = load i32, i32* @TAG, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %97, %58
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @uart_write_bytes(i32 %80, i8* %85, i32 1)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 13
  br i1 %92, label %93, label %96

93:                                               ; preds = %73
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @uart_write_bytes(i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %96

96:                                               ; preds = %93, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %69

100:                                              ; preds = %69
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @uart_write_bytes(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  br label %107

104:                                              ; preds = %50
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @uart_write_bytes(i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  br label %107

107:                                              ; preds = %104, %100
  br label %50
}

declare dso_local i32 @esp_log_level_set(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @uart_param_config(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @uart_set_pin(i32, i32, i32, i32, i32) #1

declare dso_local i32 @uart_driver_install(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @uart_set_mode(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

declare dso_local i32 @uart_read_bytes(i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
