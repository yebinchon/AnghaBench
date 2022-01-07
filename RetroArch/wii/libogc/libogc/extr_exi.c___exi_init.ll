; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IM_EXI = common dso_local global i32 0, align 4
@_exiReg = common dso_local global i32* null, align 8
@eximap = common dso_local global i32 0, align 4
@IRQ_EXI0_EXI = common dso_local global i32 0, align 4
@__exi_irq_handler = common dso_local global i32 0, align 4
@IRQ_EXI0_TC = common dso_local global i32 0, align 4
@__tc_irq_handler = common dso_local global i32 0, align 4
@IRQ_EXI0_EXT = common dso_local global i32 0, align 4
@__ext_irq_handler = common dso_local global i32 0, align 4
@IRQ_EXI1_EXI = common dso_local global i32 0, align 4
@IRQ_EXI1_TC = common dso_local global i32 0, align 4
@IRQ_EXI1_EXT = common dso_local global i32 0, align 4
@IRQ_EXI2_EXI = common dso_local global i32 0, align 4
@IRQ_EXI2_TC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__exi_init() #0 {
  %1 = load i32, i32* @IM_EXI, align 4
  %2 = call i32 @__MaskIrq(i32 %1)
  %3 = load i32*, i32** @_exiReg, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** @_exiReg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** @_exiReg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 10
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** @_exiReg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 8192, i32* %10, align 4
  %11 = load i32, i32* @eximap, align 4
  %12 = call i32 @__exi_initmap(i32 %11)
  %13 = load i32, i32* @IRQ_EXI0_EXI, align 4
  %14 = load i32, i32* @__exi_irq_handler, align 4
  %15 = call i32 @IRQ_Request(i32 %13, i32 %14, i32* null)
  %16 = load i32, i32* @IRQ_EXI0_TC, align 4
  %17 = load i32, i32* @__tc_irq_handler, align 4
  %18 = call i32 @IRQ_Request(i32 %16, i32 %17, i32* null)
  %19 = load i32, i32* @IRQ_EXI0_EXT, align 4
  %20 = load i32, i32* @__ext_irq_handler, align 4
  %21 = call i32 @IRQ_Request(i32 %19, i32 %20, i32* null)
  %22 = load i32, i32* @IRQ_EXI1_EXI, align 4
  %23 = load i32, i32* @__exi_irq_handler, align 4
  %24 = call i32 @IRQ_Request(i32 %22, i32 %23, i32* null)
  %25 = load i32, i32* @IRQ_EXI1_TC, align 4
  %26 = load i32, i32* @__tc_irq_handler, align 4
  %27 = call i32 @IRQ_Request(i32 %25, i32 %26, i32* null)
  %28 = load i32, i32* @IRQ_EXI1_EXT, align 4
  %29 = load i32, i32* @__ext_irq_handler, align 4
  %30 = call i32 @IRQ_Request(i32 %28, i32 %29, i32* null)
  %31 = load i32, i32* @IRQ_EXI2_EXI, align 4
  %32 = load i32, i32* @__exi_irq_handler, align 4
  %33 = call i32 @IRQ_Request(i32 %31, i32 %32, i32* null)
  %34 = load i32, i32* @IRQ_EXI2_TC, align 4
  %35 = load i32, i32* @__tc_irq_handler, align 4
  %36 = call i32 @IRQ_Request(i32 %34, i32 %35, i32* null)
  %37 = call i32 (...) @EXI_ProbeReset()
  ret void
}

declare dso_local i32 @__MaskIrq(i32) #1

declare dso_local i32 @__exi_initmap(i32) #1

declare dso_local i32 @IRQ_Request(i32, i32, i32*) #1

declare dso_local i32 @EXI_ProbeReset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
