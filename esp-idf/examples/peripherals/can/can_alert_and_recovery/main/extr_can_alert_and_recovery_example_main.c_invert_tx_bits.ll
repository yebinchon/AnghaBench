; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_invert_tx_bits.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_invert_tx_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TX_GPIO_NUM = common dso_local global i32 0, align 4
@CAN_TX_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @invert_tx_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invert_tx_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @TX_GPIO_NUM, align 4
  %7 = load i32, i32* @CAN_TX_IDX, align 4
  %8 = call i32 @gpio_matrix_out(i32 %6, i32 %7, i32 1, i32 0)
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @TX_GPIO_NUM, align 4
  %11 = load i32, i32* @CAN_TX_IDX, align 4
  %12 = call i32 @gpio_matrix_out(i32 %10, i32 %11, i32 0, i32 0)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @gpio_matrix_out(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
