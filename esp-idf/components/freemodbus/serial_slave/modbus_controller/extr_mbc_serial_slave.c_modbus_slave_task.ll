; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_modbus_slave_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_modbus_slave_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mbs_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@MB_EVENT_STACK_STARTED = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@EV_FRAME_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @modbus_slave_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modbus_slave_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @MB_SLAVE_ASSERT(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbs_interface_ptr, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @MB_SLAVE_ASSERT(i32 %14)
  br label %16

16:                                               ; preds = %38, %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %21 = load i32, i32* @pdFALSE, align 4
  %22 = load i32, i32* @pdFALSE, align 4
  %23 = load i32, i32* @portMAX_DELAY, align 4
  %24 = call i32 @xEventGroupWaitBits(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MB_EVENT_STACK_STARTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = call i32 (...) @eMBPoll()
  %31 = call i64 (...) @xMBPortSerialTxPoll()
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EV_FRAME_SENT, align 4
  %36 = call i32 @xMBPortEventPost(i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %16
  br label %16
}

declare dso_local i32 @MB_SLAVE_ASSERT(i32) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eMBPoll(...) #1

declare dso_local i64 @xMBPortSerialTxPoll(...) #1

declare dso_local i32 @xMBPortEventPost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
