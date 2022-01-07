; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_main.c_btc_disable_bluetooth.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_main.c_btc_disable_bluetooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTA_SUCCESS = common dso_local global i64 0, align 8
@BTC_MAIN_DISABLE_FUTURE = common dso_local global i32 0, align 4
@FUTURE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @btc_disable_bluetooth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_disable_bluetooth() #0 {
  %1 = call i64 (...) @BTA_DisableBluetooth()
  %2 = load i64, i64* @BTA_SUCCESS, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @BTC_MAIN_DISABLE_FUTURE, align 4
  %6 = call i32* @btc_main_get_future_p(i32 %5)
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FUTURE_FAIL, align 4
  %9 = call i32 @future_ready(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

declare dso_local i64 @BTA_DisableBluetooth(...) #1

declare dso_local i32 @future_ready(i32, i32) #1

declare dso_local i32* @btc_main_get_future_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
