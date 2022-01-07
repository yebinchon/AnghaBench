; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_create.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 (i64, i8**)*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@MB_PORT_SERIAL_SLAVE = common dso_local global i64 0, align 8
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mb port not supported = %u.\00", align 1
@mbs_interface_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@MB_MODE_RTU = common dso_local global i32 0, align 4
@MB_DEVICE_ADDRESS = common dso_local global i32 0, align 4
@MB_UART_PORT = common dso_local global i32 0, align 4
@MB_DEVICE_SPEED = common dso_local global i32 0, align 4
@MB_PARITY_NONE = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mb event group error.\00", align 1
@MB_CONTROLLER_NOTIFY_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"mb notify queue creation error.\00", align 1
@modbus_slave_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"modbus_slave_task\00", align 1
@MB_CONTROLLER_STACK_SIZE = common dso_local global i32 0, align 4
@MB_CONTROLLER_PRIORITY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"mb controller task creation error, xTaskCreate() returns (0x%x).\00", align 1
@mbc_serial_slave_check_event = common dso_local global i32 0, align 4
@mbc_serial_slave_destroy = common dso_local global i32 0, align 4
@mbc_serial_slave_get_param_info = common dso_local global i32 0, align 4
@mbc_serial_slave_set_descriptor = common dso_local global i32 0, align 4
@mbc_serial_slave_setup = common dso_local global i32 0, align 4
@mbc_serial_slave_start = common dso_local global i32 0, align 4
@eMBRegDiscreteCBSerialSlave = common dso_local global i32 0, align 4
@eMBRegInputCBSerialSlave = common dso_local global i32 0, align 4
@eMBRegHoldingCBSerialSlave = common dso_local global i32 0, align 4
@eMBRegCoilsCBSerialSlave = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbc_serial_slave_create(i64 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MB_PORT_SERIAL_SLAVE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %12 = load i64, i64* %3, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %10, i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.TYPE_7__* @malloc(i32 4)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @MB_SLAVE_ASSERT(i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @vMBPortSetMode(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 11
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %5, align 8
  %29 = load i64, i64* @MB_PORT_SERIAL_SLAVE, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @MB_MODE_RTU, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @MB_DEVICE_ADDRESS, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @MB_UART_PORT, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @MB_DEVICE_SPEED, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @MB_PARITY_NONE, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  store i64 0, i64* %6, align 8
  %52 = call i32* (...) @xEventGroupCreate()
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %61 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @MB_CONTROLLER_NOTIFY_QUEUE_SIZE, align 4
  %63 = call i32* @xQueueCreate(i32 %62, i32 4)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %72 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %70, i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @MB_CONTROLLER_STACK_SIZE, align 4
  %74 = load i32, i32* @MB_CONTROLLER_PRIORITY, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i64 @xTaskCreate(i8* bitcast (i32* @modbus_slave_task to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32* null, i32 %74, i32** %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @pdPASS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %19
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @vTaskDelete(i32* %84)
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @pdPASS, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %91 = load i64, i64* %6, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %89, i32 %90, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %81, %19
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @MB_SLAVE_ASSERT(i32 %99)
  %101 = load i32, i32* @mbc_serial_slave_check_event, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @mbc_serial_slave_destroy, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @mbc_serial_slave_get_param_info, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 7
  store i32 (i64, i8**)* @mbc_serial_slave_create, i32 (i64, i8**)** %111, align 8
  %112 = load i32, i32* @mbc_serial_slave_set_descriptor, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @mbc_serial_slave_setup, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @mbc_serial_slave_start, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @eMBRegDiscreteCBSerialSlave, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @eMBRegInputCBSerialSlave, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @eMBRegHoldingCBSerialSlave, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @eMBRegCoilsCBSerialSlave, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %134 = bitcast %struct.TYPE_7__* %133 to i8*
  %135 = load i8**, i8*** %4, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @ESP_OK, align 4
  ret i32 %136
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @MB_SLAVE_ASSERT(i32) #1

declare dso_local i32 @vMBPortSetMode(i32) #1

declare dso_local i32* @xEventGroupCreate(...) #1

declare dso_local i32* @xQueueCreate(i32, i32) #1

declare dso_local i64 @xTaskCreate(i8*, i8*, i32, i32*, i32, i32**) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
