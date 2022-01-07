; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@MB_EIO = common dso_local global i64 0, align 8
@MB_ENOERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"mb stack initialization failure, eMBInit() returns (0x%x).\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"mb stack set slave ID failure, eMBEnable() returned (0x%x).\00", align 1
@MB_EVENT_STACK_STARTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"mb stack start event set error.\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mbc_serial_master_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_master_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbm_interface_ptr, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %7, i32 %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @MB_EIO, align 8
  store i64 %10, i64* %1, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbm_interface_ptr, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %2, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @eMBMasterInit(i32 %19, i32 %23, i32 %27, i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @MB_ENOERR, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %38 = load i64, i64* %1, align 8
  %39 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = call i64 (...) @eMBMasterEnable()
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @MB_ENOERR, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %46 = load i64, i64* %1, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %44, i32 %45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %53 = call i32 @xEventGroupSetBits(i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %58 = call i32 (i32, i32, i8*, ...) @MB_MASTER_CHECK(i32 %56, i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ESP_OK, align 4
  ret i32 %59
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*, ...) #1

declare dso_local i64 @eMBMasterInit(i32, i32, i32, i32) #1

declare dso_local i64 @eMBMasterEnable(...) #1

declare dso_local i32 @xEventGroupSetBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
