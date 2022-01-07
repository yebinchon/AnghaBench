; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_create.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i64, i8**)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MB_PORT_SERIAL_MASTER = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mb incorrect port selected = %u.\00", align 1
@mbm_interface_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@MB_MODE_RTU = common dso_local global i32 0, align 4
@MB_UART_PORT = common dso_local global i32 0, align 4
@MB_DEVICE_SPEED = common dso_local global i32 0, align 4
@MB_PARITY_NONE = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mb event group error.\00", align 1
@modbus_master_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"modbus_matask\00", align 1
@MB_CONTROLLER_STACK_SIZE = common dso_local global i32 0, align 4
@MB_CONTROLLER_PRIORITY = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"mb controller task creation error, xTaskCreate() returns (0x%x).\00", align 1
@mbc_serial_master_destroy = common dso_local global i32 0, align 4
@mbc_serial_master_setup = common dso_local global i32 0, align 4
@mbc_serial_master_start = common dso_local global i32 0, align 4
@mbc_serial_master_get_cid_info = common dso_local global i32 0, align 4
@mbc_serial_master_get_parameter = common dso_local global i32 0, align 4
@mbc_serial_master_send_request = common dso_local global i32 0, align 4
@mbc_serial_master_set_descriptor = common dso_local global i32 0, align 4
@mbc_serial_master_set_parameter = common dso_local global i32 0, align 4
@eMBRegDiscreteCBSerialMaster = common dso_local global i32 0, align 4
@eMBRegInputCBSerialMaster = common dso_local global i32 0, align 4
@eMBRegHoldingCBSerialMaster = common dso_local global i32 0, align 4
@eMBRegCoilsCBSerialMaster = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbc_serial_master_create(i64 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MB_PORT_SERIAL_MASTER, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %12 = load i64, i64* %3, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call %struct.TYPE_7__* @malloc(i32 4)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @MB_MASTER_ASSERT(i32 %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 13
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %5, align 8
  %26 = load i64, i64* @MB_PORT_SERIAL_MASTER, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @MB_MODE_RTU, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @MB_UART_PORT, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @MB_DEVICE_SPEED, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @MB_PARITY_NONE, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  store i64 0, i64* %6, align 8
  %45 = call i32* (...) @xEventGroupCreate()
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %54 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %52, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @MB_CONTROLLER_STACK_SIZE, align 4
  %56 = load i32, i32* @MB_CONTROLLER_PRIORITY, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i64 @xTaskCreate(i8* bitcast (i32* @modbus_master_task to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32* null, i32 %56, i32** %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @pdPASS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %19
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @vTaskDelete(i32* %66)
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @pdPASS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %71, i32 %72, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %63, %19
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @MB_MASTER_ASSERT(i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 12
  store i32 (i64, i8**)* @mbc_serial_master_create, i32 (i64, i8**)** %84, align 8
  %85 = load i32, i32* @mbc_serial_master_destroy, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @mbc_serial_master_setup, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @mbc_serial_master_start, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @mbc_serial_master_get_cid_info, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @mbc_serial_master_get_parameter, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @mbc_serial_master_send_request, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @mbc_serial_master_set_descriptor, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @mbc_serial_master_set_parameter, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @eMBRegDiscreteCBSerialMaster, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @eMBRegInputCBSerialMaster, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @eMBRegHoldingCBSerialMaster, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @eMBRegCoilsCBSerialMaster, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %122 = bitcast %struct.TYPE_7__* %121 to i8*
  %123 = load i8**, i8*** %4, align 8
  store i8* %122, i8** %123, align 8
  %124 = load i32, i32* @ESP_OK, align 4
  ret i32 %124
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @MB_MASTER_ASSERT(i32) #1

declare dso_local i32* @xEventGroupCreate(...) #1

declare dso_local i64 @xTaskCreate(i8*, i8*, i32, i32*, i32, i32**) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
