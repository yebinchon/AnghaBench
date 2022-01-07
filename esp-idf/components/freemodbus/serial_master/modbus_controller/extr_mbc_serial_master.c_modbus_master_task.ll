; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_modbus_master_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_modbus_master_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@MB_EVENT_STACK_STARTED = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@EV_MASTER_FRAME_TRANSMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @modbus_master_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modbus_master_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @MB_MASTER_ASSERT(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  br label %12

12:                                               ; preds = %34, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %17 = load i32, i32* @pdFALSE, align 4
  %18 = load i32, i32* @pdFALSE, align 4
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @xEventGroupWaitBits(i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = call i32 (...) @eMBMasterPoll()
  %27 = call i64 (...) @xMBMasterPortSerialTxPoll()
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EV_MASTER_FRAME_TRANSMITTED, align 4
  %32 = call i32 @xMBMasterPortEventPost(i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %12
  br label %12
}

declare dso_local i32 @MB_MASTER_ASSERT(i32) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eMBMasterPoll(...) #1

declare dso_local i64 @xMBMasterPortSerialTxPoll(...) #1

declare dso_local i32 @xMBMasterPortEventPost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
