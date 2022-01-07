; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_scb_dealloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_scb_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, i32*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bta_ag_scb_dealloc %d\00", align 1
@BTM_INVALID_SCO_INDEX = common dso_local global i32 0, align 4
@BTA_ID_AG = common dso_local global i32 0, align 4
@BTA_AG_NUM_SCB = common dso_local global i64 0, align 8
@bta_ag_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@BTA_AG_DISABLE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_scb_dealloc(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_8__* %6)
  %8 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = call i32 @bta_sys_stop_timer(i32* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = call i32 @bta_sys_stop_timer(i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = call i32 @bta_sys_stop_timer(i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i32 @memset(%struct.TYPE_8__* %18, i32 0, i32 16)
  %20 = load i32, i32* @BTM_INVALID_SCO_INDEX, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @BTA_ID_AG, align 4
  %24 = call i32 @bta_sys_is_register(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @BTA_AG_NUM_SCB, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_ag_cb, i32 0, i32 1), align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %27

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_ag_cb, i32 0, i32 0), align 8
  %49 = load i32, i32* @BTA_AG_DISABLE_EVT, align 4
  %50 = call i32 %48(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_8__*) #1

declare dso_local i32 @bta_sys_stop_timer(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @bta_sys_is_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
