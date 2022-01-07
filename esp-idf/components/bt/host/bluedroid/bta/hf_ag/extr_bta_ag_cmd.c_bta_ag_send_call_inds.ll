; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_call_inds.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_cmd.c_bta_ag_send_call_inds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@bta_ag_callsetup_ind_tbl = common dso_local global i32* null, align 8
@BTA_AG_END_CALL_RES = common dso_local global i64 0, align 8
@BTA_AG_CALL_INACTIVE = common dso_local global i32 0, align 4
@BTA_AG_IN_CALL_CONN_RES = common dso_local global i64 0, align 8
@BTA_AG_OUT_CALL_CONN_RES = common dso_local global i64 0, align 8
@BTA_AG_IN_CALL_HELD_RES = common dso_local global i64 0, align 8
@BTA_AG_CALL_ACTIVE = common dso_local global i32 0, align 4
@BTA_AG_IND_CALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTA_AG_IND_CALLSETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ag_send_call_inds(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** @bta_ag_callsetup_ind_tbl, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @BTA_AG_END_CALL_RES, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @BTA_AG_CALL_INACTIVE, align 4
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @BTA_AG_IN_CALL_CONN_RES, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @BTA_AG_OUT_CALL_CONN_RES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @BTA_AG_IN_CALL_HELD_RES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %19
  %32 = load i32, i32* @BTA_AG_CALL_ACTIVE, align 4
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %31
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = load i32, i32* @BTA_AG_IND_CALL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @bta_ag_send_ind(%struct.TYPE_4__* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i32, i32* @BTA_AG_IND_CALLSETUP, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @bta_ag_send_ind(%struct.TYPE_4__* %44, i32 %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @bta_ag_send_ind(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
