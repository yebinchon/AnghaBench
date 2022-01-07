; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_finishDma.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_finishDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2S_DSCR_EN = common dso_local global i32 0, align 4
@I2S_TX_REMPTY_INT_RAW = common dso_local global i32 0, align 4
@I2S_TX_IDLE = common dso_local global i32 0, align 4
@I2S_TX_START = common dso_local global i32 0, align 4
@I2S_RX_START = common dso_local global i32 0, align 4
@I2S_OUTLINK_START = common dso_local global i32 0, align 4
@I2S_INLINK_START = common dso_local global i32 0, align 4
@I2S_TX_RESET = common dso_local global i32 0, align 4
@I2S_TX_FIFO_RESET = common dso_local global i32 0, align 4
@I2S_RX_RESET = common dso_local global i32 0, align 4
@I2S_RX_FIFO_RESET = common dso_local global i32 0, align 4
@I2S_TX_FIFO_RESET_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finishDma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishDma() #0 {
  %1 = call i32 @I2S_FIFO_CONF_REG(i32 0)
  %2 = call i32 @READ_PERI_REG(i32 %1)
  %3 = load i32, i32* @I2S_DSCR_EN, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %61

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %15, %7
  %9 = call i32 @I2S_INT_RAW_REG(i32 0)
  %10 = call i32 @READ_PERI_REG(i32 %9)
  %11 = load i32, i32* @I2S_TX_REMPTY_INT_RAW, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %8

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %24, %16
  %18 = call i32 @I2S_STATE_REG(i32 0)
  %19 = call i32 @READ_PERI_REG(i32 %18)
  %20 = load i32, i32* @I2S_TX_IDLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %17

25:                                               ; preds = %17
  %26 = call i32 @I2S_CONF_REG(i32 0)
  %27 = load i32, i32* @I2S_TX_START, align 4
  %28 = load i32, i32* @I2S_RX_START, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @CLEAR_PERI_REG_MASK(i32 %26, i32 %29)
  %31 = call i32 @I2S_OUT_LINK_REG(i32 0)
  %32 = load i32, i32* @I2S_OUTLINK_START, align 4
  %33 = load i32, i32* @I2S_INLINK_START, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %31, i32 %34)
  %36 = call i32 @I2S_CONF_REG(i32 0)
  %37 = load i32, i32* @I2S_TX_RESET, align 4
  %38 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @I2S_RX_RESET, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @SET_PERI_REG_MASK(i32 %36, i32 %43)
  %45 = call i32 @I2S_CONF_REG(i32 0)
  %46 = load i32, i32* @I2S_TX_RESET, align 4
  %47 = load i32, i32* @I2S_TX_FIFO_RESET, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @I2S_RX_RESET, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @I2S_RX_FIFO_RESET, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @CLEAR_PERI_REG_MASK(i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %60, %25
  %55 = call i32 @I2S_STATE_REG(i32 0)
  %56 = call i32 @READ_PERI_REG(i32 %55)
  %57 = load i32, i32* @I2S_TX_FIFO_RESET_BACK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %54

61:                                               ; preds = %6, %54
  ret void
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @I2S_FIFO_CONF_REG(i32) #1

declare dso_local i32 @I2S_INT_RAW_REG(i32) #1

declare dso_local i32 @I2S_STATE_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_CONF_REG(i32) #1

declare dso_local i32 @I2S_OUT_LINK_REG(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
