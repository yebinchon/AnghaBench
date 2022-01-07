; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_irq.c___irq_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_irq.c___irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__intrstack_addr = common dso_local global i32 0, align 4
@__intrstack_end = common dso_local global i32 0, align 4
@g_IRQHandler = common dso_local global i32 0, align 4
@CPU_MINIMUM_STACK_FRAME_SIZE = common dso_local global i32 0, align 4
@CPU_STACK_ALIGNMENT = common dso_local global i32 0, align 4
@prevIrqMask = common dso_local global i64 0, align 8
@currIrqMask = common dso_local global i64 0, align 8
@_piReg = common dso_local global i32* null, align 8
@IM_PI_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__irq_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @__intrstack_addr, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @__intrstack_end, align 4
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @g_IRQHandler, align 4
  %7 = call i32 @memset(i32 %6, i32 0, i32 128)
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32 -559038737, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @CPU_MINIMUM_STACK_FRAME_SIZE, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @CPU_STACK_ALIGNMENT, align 4
  %15 = sub nsw i32 %14, 1
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mtspr(i32 272, i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @mtspr(i32 273, i32 %24)
  store i64 0, i64* @prevIrqMask, align 8
  store i64 0, i64* @currIrqMask, align 8
  %26 = load i32*, i32** @_piReg, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 240, i32* %27, align 4
  %28 = call i32 @__MaskIrq(i32 -32)
  %29 = load i32*, i32** @_piReg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @IM_PI_ERROR, align 4
  %32 = call i32 @__UnmaskIrq(i32 %31)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @__MaskIrq(i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
