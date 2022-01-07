; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_set_parameter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_set_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i8*, i32*, i32*)* }

@ESP_OK = common dso_local global i64 0, align 8
@master_interface_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Master interface is not correctly initialized.\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"SERIAL master set parameter failure error=(0x%x) (%s).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_master_set_parameter(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64, i64* @ESP_OK, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %13, i64 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (i32, i8*, i32*, i32*)*, i64 (i32, i8*, i32*, i32*)** %18, align 8
  %20 = icmp ne i64 (i32, i8*, i32*, i32*)* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %21, i64 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master_interface_ptr, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (i32, i8*, i32*, i32*)*, i64 (i32, i8*, i32*, i32*)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 %27(i32 %28, i8* %29, i32* %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @ESP_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @esp_err_to_name(i64 %39)
  %41 = call i32 (i32, i64, i8*, ...) @MB_MASTER_CHECK(i32 %36, i64 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %40)
  %42 = load i64, i64* @ESP_OK, align 8
  ret i64 %42
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i64, i8*, ...) #1

declare dso_local i32 @esp_err_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
