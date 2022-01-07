; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32, i32*)* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@BTA_AG_SUCCESS = common dso_local global i32 0, align 4
@bta_ag_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTA_AG_REGISTER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_register(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = call i32 @bta_ag_create_records(%struct.TYPE_16__* %30, %struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bta_ag_start_servers(%struct.TYPE_16__* %33, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_16__* %38)
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BTA_AG_SUCCESS, align 4
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_ag_cb, i32 0, i32 0), align 8
  %50 = load i32, i32* @BTA_AG_REGISTER_EVT, align 4
  %51 = bitcast %struct.TYPE_17__* %5 to i32*
  %52 = call i32 %49(i32 %50, i32* %51)
  ret void
}

declare dso_local i32 @bta_ag_create_records(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bta_ag_start_servers(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
