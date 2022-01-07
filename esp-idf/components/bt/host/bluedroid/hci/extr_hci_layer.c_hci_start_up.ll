; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_hci_start_up.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_hci_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.TYPE_4__ = type { i32 (i32*, i32*)* }

@HCI_HOST_TASK_NAME = common dso_local global i32 0, align 4
@HCI_HOST_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@HCI_HOST_TASK_PRIO = common dso_local global i32 0, align 4
@HCI_HOST_TASK_PINNED_TO_CORE = common dso_local global i32 0, align 4
@hci_host_thread = common dso_local global i32* null, align 8
@packet_fragmenter = common dso_local global %struct.TYPE_3__* null, align 8
@packet_fragmenter_callbacks = common dso_local global i32 0, align 4
@hal = common dso_local global %struct.TYPE_4__* null, align 8
@hal_callbacks = common dso_local global i32 0, align 4
@hci_host_startup_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_start_up() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @hci_layer_init_env()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %24

5:                                                ; preds = %0
  %6 = load i32, i32* @HCI_HOST_TASK_NAME, align 4
  %7 = load i32, i32* @HCI_HOST_TASK_STACK_SIZE, align 4
  %8 = load i32, i32* @HCI_HOST_TASK_PRIO, align 4
  %9 = load i32, i32* @HCI_HOST_TASK_PINNED_TO_CORE, align 4
  %10 = call i32* @osi_thread_create(i32 %6, i32 %7, i32 %8, i32 %9, i32 2)
  store i32* %10, i32** @hci_host_thread, align 8
  %11 = load i32*, i32** @hci_host_thread, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 -2, i32* %1, align 4
  br label %26

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @packet_fragmenter, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32*)*, i32 (i32*)** %16, align 8
  %18 = call i32 %17(i32* @packet_fragmenter_callbacks)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hal, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %20, align 8
  %22 = load i32*, i32** @hci_host_thread, align 8
  %23 = call i32 %21(i32* @hal_callbacks, i32* %22)
  store i32 1, i32* @hci_host_startup_flag, align 4
  store i32 0, i32* %1, align 4
  br label %26

24:                                               ; preds = %4
  %25 = call i32 (...) @hci_shut_down()
  store i32 -1, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %14, %13
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @hci_layer_init_env(...) #1

declare dso_local i32* @osi_thread_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hci_shut_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
