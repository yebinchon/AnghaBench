; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_get_cid_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_get_cid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@mbm_interface_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mb incorrect data buffer pointer.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mb incorrect descriptor table or not set.\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"mb incorrect cid of characteristic.\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"mb incorrect characteristic key.\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_5__**)* @mbc_serial_master_get_cid_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_master_get_cid_info(i64 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %11 = call i32 @MB_MASTER_CHECK(i32 %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbm_interface_ptr, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %15 = icmp ne %struct.TYPE_5__** %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 @MB_MASTER_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %25 = call i32 @MB_MASTER_CHECK(i32 %23, i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %33 = call i32 @MB_MASTER_CHECK(i32 %31, i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %45 = call i32 @MB_MASTER_CHECK(i32 %43, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %47, align 8
  %48 = load i32, i32* @ESP_OK, align 4
  ret i32 %48
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
