; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_exec_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_exec_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@BTA_GATT_OK = common dso_local global i32 0, align 4
@BTA_GATTC_EXEC_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_exec_cmpl(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = call i32 @bta_gattc_free_command_data(%struct.TYPE_14__* %6)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = call i32 @bta_gattc_pop_command_to_send(%struct.TYPE_14__* %8)
  %10 = load i32, i32* @BTA_GATT_OK, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.TYPE_15__*)*, i32 (i32, %struct.TYPE_15__*)** %26, align 8
  %28 = load i32, i32* @BTA_GATTC_EXEC_EVT, align 4
  %29 = call i32 %27(i32 %28, %struct.TYPE_15__* %5)
  ret void
}

declare dso_local i32 @bta_gattc_free_command_data(%struct.TYPE_14__*) #1

declare dso_local i32 @bta_gattc_pop_command_to_send(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
