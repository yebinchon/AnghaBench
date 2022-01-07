; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c_DSP_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dsp.c_DSP_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__dsp_inited = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@__dsp_def_taskcb = common dso_local global i32 0, align 4
@__dsp_intcb = common dso_local global i32 0, align 4
@IRQ_DSP_DSP = common dso_local global i32 0, align 4
@__dsp_inthandler = common dso_local global i32 0, align 4
@_dspReg = common dso_local global i32* null, align 8
@DSPCR_AIINT = common dso_local global i32 0, align 4
@DSPCR_ARINT = common dso_local global i32 0, align 4
@DSPCR_DSPINT = common dso_local global i32 0, align 4
@DSPCR_DSPRESET = common dso_local global i32 0, align 4
@DSPCR_HALT = common dso_local global i32 0, align 4
@__dsp_currtask = common dso_local global i32* null, align 8
@__dsp_firsttask = common dso_local global i32* null, align 8
@__dsp_lasttask = common dso_local global i32* null, align 8
@tmp_task = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DSP_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @_CPU_ISR_Disable(i32 %2)
  %4 = load i64, i64* @__dsp_inited, align 8
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %44

7:                                                ; preds = %0
  %8 = load i32, i32* @__dsp_def_taskcb, align 4
  store i32 %8, i32* @__dsp_intcb, align 4
  %9 = load i32, i32* @IRQ_DSP_DSP, align 4
  %10 = load i32, i32* @__dsp_inthandler, align 4
  %11 = call i32 @IRQ_Request(i32 %9, i32 %10, i32* null)
  %12 = load i32, i32* @IRQ_DSP_DSP, align 4
  %13 = call i32 @IRQMASK(i32 %12)
  %14 = call i32 @__UnmaskIrq(i32 %13)
  %15 = load i32*, i32** @_dspReg, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DSPCR_AIINT, align 4
  %19 = load i32, i32* @DSPCR_ARINT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DSPCR_DSPINT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %17, %23
  %25 = load i32, i32* @DSPCR_DSPRESET, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** @_dspReg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** @_dspReg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DSPCR_HALT, align 4
  %33 = load i32, i32* @DSPCR_AIINT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DSPCR_ARINT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DSPCR_DSPINT, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %31, %39
  %41 = load i32*, i32** @_dspReg, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %40, i32* %42, align 4
  store i32* null, i32** @__dsp_currtask, align 8
  store i32* null, i32** @__dsp_firsttask, align 8
  store i32* null, i32** @__dsp_lasttask, align 8
  store i32* null, i32** @tmp_task, align 8
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* @__dsp_inited, align 8
  br label %44

44:                                               ; preds = %7, %0
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @_CPU_ISR_Restore(i32 %45)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @IRQ_Request(i32, i32, i32*) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
