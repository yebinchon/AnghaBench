; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_event_command_ready.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_event_command_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }

@hci_host_env = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@HCI_HOST_NUM_PACKETS_DONE = common dso_local global i64 0, align 8
@HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL = common dso_local global i64 0, align 8
@packet_fragmenter = common dso_local global %struct.TYPE_13__* null, align 8
@OSI_MUTEX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @event_command_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_command_ready(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hci_host_env, i32 0, i32 1), %struct.TYPE_12__** %4, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %7 = call %struct.TYPE_11__* @fixed_queue_dequeue(i32* %5, i32 %6)
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HCI_HOST_NUM_PACKETS_DONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCI_VENDOR_BLE_ADV_REPORT_FLOW_CONTROL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @packet_fragmenter, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = call i32 @osi_free(%struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = call i32 @osi_free(%struct.TYPE_11__* %31)
  br label %57

33:                                               ; preds = %13
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hci_host_env, i32 0, i32 0), align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hci_host_env, i32 0, i32 0), align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* @OSI_MUTEX_MAX_TIMEOUT, align 4
  %39 = call i32 @osi_mutex_lock(i32* %37, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @list_append(i32 %42, %struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @osi_mutex_unlock(i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @packet_fragmenter, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_11__* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = call i32 @restart_command_waiting_response_timer(%struct.TYPE_12__* %55)
  br label %57

57:                                               ; preds = %33, %19
  ret void
}

declare dso_local %struct.TYPE_11__* @fixed_queue_dequeue(i32*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_11__*) #1

declare dso_local i32 @osi_mutex_lock(i32*, i32) #1

declare dso_local i32 @list_append(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @osi_mutex_unlock(i32*) #1

declare dso_local i32 @restart_command_waiting_response_timer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
