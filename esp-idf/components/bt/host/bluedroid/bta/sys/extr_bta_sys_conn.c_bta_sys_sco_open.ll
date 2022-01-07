; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_conn.c_bta_sys_sco_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_bta_sys_conn.c_bta_sys_sco_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i64, i32)*, i32 (i32, i32, i64, i32)* }

@BTA_ID_AG = common dso_local global i64 0, align 8
@bta_sys_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BTA_SYS_SCO_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_sys_sco_open(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @BTA_ID_AG, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_sys_cb, i32 0, i32 1), align 8
  %12 = icmp ne i32 (i32, i32, i64, i32)* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32 (i32, i32, i64, i32)*, i32 (i32, i32, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_sys_cb, i32 0, i32 1), align 8
  %15 = load i32, i32* @BTA_SYS_SCO_OPEN, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %14(i32 %15, i32 1, i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %10, %3
  %20 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_sys_cb, i32 0, i32 0), align 8
  %21 = icmp ne i32 (i32, i64, i64, i32)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_sys_cb, i32 0, i32 0), align 8
  %24 = load i32, i32* @BTA_SYS_SCO_OPEN, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 %23(i32 %24, i64 %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
