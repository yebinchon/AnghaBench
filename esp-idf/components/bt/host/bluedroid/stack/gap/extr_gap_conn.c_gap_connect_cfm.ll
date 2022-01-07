; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32 (i32, i32)*, i32, i32, i32 }

@GAP_CCB_FLAGS_SEC_DONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gap_sec_check_complete = common dso_local global i32 0, align 4
@L2CAP_CONN_OK = common dso_local global i64 0, align 8
@GAP_CCB_STATE_CONN_SETUP = common dso_local global i64 0, align 8
@GAP_CCB_STATE_CFG_SETUP = common dso_local global i64 0, align 8
@GAP_EVT_CONN_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @gap_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_connect_cfm(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.TYPE_5__* @gap_find_ccb_by_cid(i64 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GAP_CCB_FLAGS_SEC_DONE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = call i32 @btm_sec_mx_access_request(i32 %20, i32 %23, i32 %24, i32 0, i32 0, i32* @gap_sec_check_complete, %struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %17, %10
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @L2CAP_CONN_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GAP_CCB_STATE_CONN_SETUP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i64, i64* @GAP_CCB_STATE_CFG_SETUP, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = call i32 @L2CA_CONFIG_REQ(i64 %41, i32* %43)
  br label %62

45:                                               ; preds = %31, %27
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = icmp ne i32 (i32, i32)* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GAP_EVT_CONN_CLOSED, align 4
  %58 = call i32 %53(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = call i32 @gap_release_ccb(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %9, %59, %37
  ret void
}

declare dso_local %struct.TYPE_5__* @gap_find_ccb_by_cid(i64) #1

declare dso_local i32 @btm_sec_mx_access_request(i32, i32, i32, i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @L2CA_CONFIG_REQ(i64, i32*) #1

declare dso_local i32 @gap_release_ccb(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
