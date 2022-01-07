; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_transmit_command_futured.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/hci/extr_hci_layer.c_transmit_command_futured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32*, i32 }

@MSG_STACK_TO_HC_HCI_CMD = common dso_local global i32 0, align 4
@hci_host_env = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@OSI_THREAD_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @transmit_command_futured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transmit_command_futured(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = call %struct.TYPE_7__* @osi_calloc(i32 24)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i32* (...) @future_new()
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @STREAM_TO_UINT16(i32 %22, i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load i32, i32* @MSG_STACK_TO_HC_HCI_CMD, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hci_host_env, i32 0, i32 0), align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %37 = call i32 @fixed_queue_enqueue(i32 %34, %struct.TYPE_7__* %35, i32 %36)
  %38 = load i32, i32* @OSI_THREAD_MAX_TIMEOUT, align 4
  %39 = call i32 @hci_host_task_post(i32 %38)
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local %struct.TYPE_7__* @osi_calloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @future_new(...) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @hci_host_task_post(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
