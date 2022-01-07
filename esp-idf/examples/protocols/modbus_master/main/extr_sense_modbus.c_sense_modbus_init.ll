; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MB_PARITY = common dso_local global i32 0, align 4
@MB_BAUDRATE = common dso_local global i32 0, align 4
@MB_MODE_RTU = common dso_local global i32 0, align 4
@MB_PORTNUM = common dso_local global i32 0, align 4
@MB_PORT_SERIAL_MASTER = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mb controller initialization fail.\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"mb controller initialization fail, returns(0x%x).\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"mb controller setup fail, returns(0x%x).\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"mb controller start fail, returns(0x%x).\00", align 1
@CONFIG_MB_UART_TXD = common dso_local global i32 0, align 4
@CONFIG_MB_UART_RXD = common dso_local global i32 0, align 4
@CONFIG_MB_UART_RTS = common dso_local global i32 0, align 4
@UART_PIN_NO_CHANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"mb serial set pin failure, uart_set_pin() returned (0x%x).\00", align 1
@UART_MODE_RS485_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"mb serial set mode failure, uart_set_mode() returned (0x%x).\00", align 1
@device_parameters = common dso_local global i32* null, align 8
@num_device_parameters = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"mb controller set descriptor fail, returns(0x%x).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sense_modbus_init() #0 {
  %1 = alloca %struct.TYPE_2__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %5 = load i32, i32* @MB_PARITY, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %7 = load i32, i32* @MB_BAUDRATE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  %9 = load i32, i32* @MB_MODE_RTU, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 3
  %11 = load i32, i32* @MB_PORTNUM, align 4
  store i32 %11, i32* %10, align 4
  store i8* null, i8** %2, align 8
  %12 = load i32, i32* @MB_PORT_SERIAL_MASTER, align 4
  %13 = call i64 @mbc_master_init(i32 %12, i8** %2)
  store i64 %13, i64* %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %18 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %22, i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = bitcast %struct.TYPE_2__* %1 to i8*
  %28 = call i64 @mbc_master_setup(i8* %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %34 = load i64, i64* %3, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %32, i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i64 (...) @mbc_master_start()
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %41, i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @MB_PORTNUM, align 4
  %47 = load i32, i32* @CONFIG_MB_UART_TXD, align 4
  %48 = load i32, i32* @CONFIG_MB_UART_RXD, align 4
  %49 = load i32, i32* @CONFIG_MB_UART_RTS, align 4
  %50 = load i32, i32* @UART_PIN_NO_CHANGE, align 4
  %51 = call i64 @uart_set_pin(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @ESP_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %57 = load i64, i64* %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %55, i32 %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @MB_PORTNUM, align 4
  %61 = load i32, i32* @UART_MODE_RS485_HALF_DUPLEX, align 4
  %62 = call i64 @uart_set_mode(i32 %60, i32 %61)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @ESP_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %68 = load i64, i64* %3, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %66, i32 %67, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = call i32 @vTaskDelay(i32 5)
  %72 = load i32*, i32** @device_parameters, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* @num_device_parameters, align 4
  %75 = call i64 @mbc_master_set_descriptor(i32* %73, i32 %74)
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @ESP_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %81 = load i64, i64* %3, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %79, i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i64 @mbc_master_init(i32, i8**) #1

declare dso_local i32 @SENSE_MB_CHECK(i32, i32, i8*, ...) #1

declare dso_local i64 @mbc_master_setup(i8*) #1

declare dso_local i64 @mbc_master_start(...) #1

declare dso_local i64 @uart_set_pin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @uart_set_mode(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i64 @mbc_master_set_descriptor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
