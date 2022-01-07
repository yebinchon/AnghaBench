; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_GetRxQueueCnt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_GetRxQueueCnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@BT_PASS = common dso_local global i32 0, align 4
@GAP_MAX_CONNECTIONS = common dso_local global i64 0, align 8
@gap_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GAP_CCB_STATE_CONNECTED = common dso_local global i64 0, align 8
@GAP_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"GAP_GetRxQueueCnt - rc = 0x%04x, rx_queue_count=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GAP_GetRxQueueCnt(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @BT_PASS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @GAP_MAX_CONNECTIONS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gap_cb, i32 0, i32 0, i32 0), align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GAP_CCB_STATE_CONNECTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  br label %27

25:                                               ; preds = %11
  %26 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %20
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @GAP_INVALID_HANDLE, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @GAP_TRACE_EVENT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @GAP_TRACE_EVENT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
