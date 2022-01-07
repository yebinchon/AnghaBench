; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_tx_hrate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_tx_hrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_mbuf = type { i32 }

@blehr_tx_hrate.hrm = internal global [2 x i32] zeroinitializer, align 4
@notify_state = common dso_local global i32 0, align 4
@heartrate = common dso_local global i32 0, align 4
@conn_handle = common dso_local global i32 0, align 4
@hrs_hrm_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @blehr_tx_hrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blehr_tx_hrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.os_mbuf*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @notify_state, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @blehr_tx_hrate_stop()
  store i32 90, i32* @heartrate, align 4
  br label %27

9:                                                ; preds = %1
  store i32 6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @blehr_tx_hrate.hrm, i64 0, i64 0), align 4
  %10 = load i32, i32* @heartrate, align 4
  store i32 %10, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @blehr_tx_hrate.hrm, i64 0, i64 1), align 4
  %11 = load i32, i32* @heartrate, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @heartrate, align 4
  %13 = load i32, i32* @heartrate, align 4
  %14 = icmp eq i32 %13, 160
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 90, i32* @heartrate, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = call %struct.os_mbuf* @ble_hs_mbuf_from_flat(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @blehr_tx_hrate.hrm, i64 0, i64 0), i32 8)
  store %struct.os_mbuf* %17, %struct.os_mbuf** %4, align 8
  %18 = load i32, i32* @conn_handle, align 4
  %19 = load i32, i32* @hrs_hrm_handle, align 4
  %20 = load %struct.os_mbuf*, %struct.os_mbuf** %4, align 8
  %21 = call i32 @ble_gattc_notify_custom(i32 %18, i32 %19, %struct.os_mbuf* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i32 (...) @blehr_tx_hrate_reset()
  br label %27

27:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @blehr_tx_hrate_stop(...) #1

declare dso_local %struct.os_mbuf* @ble_hs_mbuf_from_flat(i32*, i32) #1

declare dso_local i32 @ble_gattc_notify_custom(i32, i32, %struct.os_mbuf*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @blehr_tx_hrate_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
