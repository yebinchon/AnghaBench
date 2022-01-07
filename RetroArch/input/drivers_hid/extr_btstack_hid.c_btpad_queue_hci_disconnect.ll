; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btpad_queue_command = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@hci_disconnect_ptr = common dso_local global i32 0, align 4
@insert_position = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btpad_queue_command*, i32, i32)* @btpad_queue_hci_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btpad_queue_hci_disconnect(%struct.btpad_queue_command* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btpad_queue_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btpad_queue_command* %0, %struct.btpad_queue_command** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %4, align 8
  %8 = icmp ne %struct.btpad_queue_command* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %24

10:                                               ; preds = %3
  %11 = load i32, i32* @hci_disconnect_ptr, align 4
  %12 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %4, align 8
  %13 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %4, align 8
  %16 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %4, align 8
  %20 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = call i32 @btpad_increment_position(i32* @insert_position)
  %23 = call i32 (...) @btpad_queue_process()
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @btpad_increment_position(i32*) #1

declare dso_local i32 @btpad_queue_process(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
