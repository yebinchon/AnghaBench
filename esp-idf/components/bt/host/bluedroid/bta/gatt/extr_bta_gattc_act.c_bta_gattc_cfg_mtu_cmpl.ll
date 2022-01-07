; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cfg_mtu_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_cfg_mtu_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32 (i32, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@BTA_GATT_OK = common dso_local global i64 0, align 8
@BTA_GATTC_CFG_MTU_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_cfg_mtu_cmpl(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = call i32 @bta_gattc_free_command_data(%struct.TYPE_18__* %6)
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i32 @bta_gattc_pop_command_to_send(%struct.TYPE_18__* %8)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BTA_GATT_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %14, %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %56, align 8
  %58 = load i32, i32* @BTA_GATTC_CFG_MTU_EVT, align 4
  %59 = call i32 %57(i32 %58, %struct.TYPE_19__* %5)
  ret void
}

declare dso_local i32 @bta_gattc_free_command_data(%struct.TYPE_18__*) #1

declare dso_local i32 @bta_gattc_pop_command_to_send(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
