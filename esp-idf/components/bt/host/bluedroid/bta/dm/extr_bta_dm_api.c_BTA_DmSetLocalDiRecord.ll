; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSetLocalDiRecord.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSetLocalDiRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }

@BTA_FAILURE = common dso_local global i32 0, align 4
@bta_dm_di_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BTA_DI_NUM_MAX = common dso_local global i64 0, align 8
@SDP_SUCCESS = common dso_local global i64 0, align 8
@UUID_SERVCLASS_PNP_INFORMATION = common dso_local global i32 0, align 4
@BTA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTA_DmSetLocalDiRecord(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @BTA_FAILURE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_di_cb, i32 0, i32 0), align 8
  %8 = load i64, i64* @BTA_DI_NUM_MAX, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = bitcast %struct.TYPE_4__* %11 to i32*
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @SDP_SetLocalDiRecord(i32* %12, i32* %13)
  %15 = load i64, i64* @SDP_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_di_cb, i32 0, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_di_cb, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_di_cb, i32 0, i32 0), align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_di_cb, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* @UUID_SERVCLASS_PNP_INFORMATION, align 4
  %32 = call i32 @bta_sys_add_uuid(i32 %31)
  %33 = load i32, i32* @BTA_SUCCESS, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %10
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @SDP_SetLocalDiRecord(i32*, i32*) #1

declare dso_local i32 @bta_sys_add_uuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
