; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnBTWrite.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnBTWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@GAP_ERR_BAD_HANDLE = common dso_local global i32 0, align 4
@GAP_CCB_STATE_CONNECTED = common dso_local global i64 0, align 8
@GAP_ERR_BAD_STATE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i64 0, align 8
@GAP_ERR_BUF_OFFSET = common dso_local global i32 0, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@BT_PASS = common dso_local global i32 0, align 4
@L2CAP_DW_CONGESTED = common dso_local global i64 0, align 8
@L2CAP_DW_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GAP_ConnBTWrite(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_8__* @gap_find_ccb_by_handle(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = call i32 @osi_free(%struct.TYPE_9__* %12)
  %14 = load i32, i32* @GAP_ERR_BAD_HANDLE, align 4
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GAP_CCB_STATE_CONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = call i32 @osi_free(%struct.TYPE_9__* %22)
  %24 = load i32, i32* @GAP_ERR_BAD_STATE, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @L2CAP_MIN_OFFSET, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = call i32 @osi_free(%struct.TYPE_9__* %32)
  %34 = load i32, i32* @GAP_ERR_BUF_OFFSET, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %41 = call i32 @fixed_queue_enqueue(i32 %38, %struct.TYPE_9__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @BT_PASS, align 4
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %35
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @gap_send_event(i32 %49)
  %51 = load i32, i32* @BT_PASS, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %46, %31, %21, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_8__* @gap_find_ccb_by_handle(i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_9__*) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @gap_send_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
