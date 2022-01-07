; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_deregister_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_deregister_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 (i32, %struct.TYPE_11__*)* }
%struct.TYPE_10__ = type { i32, i32 }

@bta_gattc_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTA_GATT_OK = common dso_local global i32 0, align 4
@BTA_GATTC_DEREG_EVT = common dso_local global i32 0, align 4
@BTA_GATTC_STATE_DISABLING = common dso_local global i64 0, align 8
@BTA_GATTC_STATE_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @bta_gattc_deregister_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_gattc_deregister_cmpl(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32 (i32, %struct.TYPE_11__*)**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_12__* @bta_gattc_cb, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** %11, align 8
  %13 = bitcast i32 (i32, %struct.TYPE_11__*)* %12 to i32 (i32, %struct.TYPE_11__*)**
  store i32 (i32, %struct.TYPE_11__*)** %13, i32 (i32, %struct.TYPE_11__*)*** %6, align 8
  %14 = call i32 @memset(%struct.TYPE_11__* %5, i32 0, i32 24)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GATT_Deregister(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = call i32 @memset(%struct.TYPE_11__* %19, i32 0, i32 24)
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @BTA_GATT_OK, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32 (i32, %struct.TYPE_11__*)**, i32 (i32, %struct.TYPE_11__*)*** %6, align 8
  %28 = icmp ne i32 (i32, %struct.TYPE_11__*)** %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32 (i32, %struct.TYPE_11__*)**, i32 (i32, %struct.TYPE_11__*)*** %6, align 8
  %31 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** %30, align 8
  %32 = load i32, i32* @BTA_GATTC_DEREG_EVT, align 4
  %33 = call i32 %31(i32 %32, %struct.TYPE_11__* %5)
  br label %34

34:                                               ; preds = %29, %1
  %35 = call i64 (...) @bta_gattc_num_reg_app()
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BTA_GATTC_STATE_DISABLING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @BTA_GATTC_STATE_DISABLED, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %37, %34
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @GATT_Deregister(i32) #1

declare dso_local i64 @bta_gattc_num_reg_app(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
