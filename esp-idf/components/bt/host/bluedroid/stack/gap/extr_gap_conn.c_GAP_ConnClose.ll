; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnClose.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_GAP_ConnClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"GAP_CONN - close  handle: 0x%x\00", align 1
@GAP_CCB_STATE_LISTENING = common dso_local global i64 0, align 8
@BT_PASS = common dso_local global i32 0, align 4
@GAP_ERR_BAD_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GAP_ConnClose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_4__* @gap_find_ccb_by_handle(i32 %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @GAP_TRACE_EVENT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GAP_CCB_STATE_LISTENING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @L2CA_DISCONNECT_REQ(i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i32 @gap_release_ccb(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @BT_PASS, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @GAP_ERR_BAD_HANDLE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_4__* @gap_find_ccb_by_handle(i32) #1

declare dso_local i32 @GAP_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @L2CA_DISCONNECT_REQ(i32) #1

declare dso_local i32 @gap_release_ccb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
