; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/common/extr_esp_modbus_master.c_mbc_master_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Master interface initialization failure, error=(0x%x), port type=(0x%x).\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@master_interface_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbc_master_init(i64 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i64, i64* @ESP_ERR_NOT_SUPPORTED, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  switch i64 %9, label %15 [
    i64 129, label %10
    i64 128, label %13
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @mbc_serial_master_create(i64 %11, i8** %6)
  store i64 %12, i64* %7, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @ESP_ERR_NOT_SUPPORTED, align 8
  store i64 %14, i64* %3, align 8
  br label %39

15:                                               ; preds = %2
  %16 = load i64, i64* @ESP_ERR_NOT_SUPPORTED, align 8
  store i64 %16, i64* %3, align 8
  br label %39

17:                                               ; preds = %10
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @MB_MASTER_CHECK(i32 %20, i32 %21, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @master_interface_ptr, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %28, %17
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %15, %13
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @mbc_serial_master_create(i64, i8**) #1

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
