; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_cback_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_act.c_bta_ag_cback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i32, i32*)* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@bta_ag_svc_id = common dso_local global i32* null, align 8
@bta_ag_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BTA_AG_OPEN_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i32)* @bta_ag_cback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_cback_open(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_12__* %8)
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** @bta_ag_svc_id, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bdcpy(i32 %30, i32 %34)
  br label %43

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bdcpy(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bta_ag_cb, i32 0, i32 0), align 8
  %45 = load i32, i32* @BTA_AG_OPEN_EVT, align 4
  %46 = bitcast %struct.TYPE_13__* %7 to i32*
  %47 = call i32 %44(i32 %45, i32* %46)
  ret void
}

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_12__*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
