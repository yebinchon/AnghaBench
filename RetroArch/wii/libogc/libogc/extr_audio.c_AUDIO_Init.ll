; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c_AUDIO_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c_AUDIO_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__AIInitFlag = common dso_local global i32 0, align 4
@bound_32KHz = common dso_local global i8* null, align 8
@bound_48KHz = common dso_local global i8* null, align 8
@min_wait = common dso_local global i8* null, align 8
@max_wait = common dso_local global i8* null, align 8
@buffer = common dso_local global i8* null, align 8
@AI_AIINTVLD = common dso_local global i32 0, align 4
@AI_AIINTMSK = common dso_local global i32 0, align 4
@AI_PSTAT = common dso_local global i32 0, align 4
@_aiReg = common dso_local global i32* null, align 8
@AI_CONTROL = common dso_local global i64 0, align 8
@AI_SCRESET = common dso_local global i32 0, align 4
@AI_SAMPLERATE_48KHZ = common dso_local global i32 0, align 4
@AI_DMAFR = common dso_local global i32 0, align 4
@__AID_Callback = common dso_local global i32* null, align 8
@__OldStack = common dso_local global i32* null, align 8
@__CallbackStack = common dso_local global i32* null, align 8
@IRQ_DSP_AI = common dso_local global i32 0, align 4
@__AIDHandler = common dso_local global i32 0, align 4
@IRQ_AI = common dso_local global i32 0, align 4
@__AISHandler = common dso_local global i32 0, align 4
@__AIS_Callback = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AUDIO_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @__AIInitFlag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %76, label %7

7:                                                ; preds = %1
  %8 = call i8* @nanosecs_to_ticks(i32 31524)
  store i8* %8, i8** @bound_32KHz, align 8
  %9 = call i8* @nanosecs_to_ticks(i32 42024)
  store i8* %9, i8** @bound_48KHz, align 8
  %10 = call i8* @nanosecs_to_ticks(i32 42000)
  store i8* %10, i8** @min_wait, align 8
  %11 = call i8* @nanosecs_to_ticks(i32 63000)
  store i8* %11, i8** @max_wait, align 8
  %12 = call i8* @nanosecs_to_ticks(i32 3000)
  store i8* %12, i8** @buffer, align 8
  %13 = load i32, i32* @AI_AIINTVLD, align 4
  %14 = load i32, i32* @AI_AIINTMSK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AI_PSTAT, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32*, i32** @_aiReg, align 8
  %20 = load i64, i64* @AI_CONTROL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** @_aiReg, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** @_aiReg, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** @_aiReg, align 8
  %29 = load i64, i64* @AI_CONTROL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AI_SCRESET, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @AI_SCRESET, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** @_aiReg, align 8
  %38 = load i64, i64* @AI_CONTROL, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i32*, i32** @_aiReg, align 8
  %41 = load i64, i64* @AI_CONTROL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_SHIFTR(i32 %43, i32 6, i32 1)
  %45 = xor i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @AI_SAMPLERATE_48KHZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %7
  %50 = load i32, i32* @AI_DMAFR, align 4
  %51 = xor i32 %50, -1
  %52 = load i32*, i32** @_aiReg, align 8
  %53 = load i64, i64* @AI_CONTROL, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @_CPU_ISR_Disable(i32 %57)
  %59 = call i32 (...) @__AISRCINIT()
  %60 = load i32, i32* @AI_DMAFR, align 4
  %61 = load i32*, i32** @_aiReg, align 8
  %62 = load i64, i64* @AI_CONTROL, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @_CPU_ISR_Restore(i32 %66)
  br label %68

68:                                               ; preds = %49, %7
  store i32* null, i32** @__AID_Callback, align 8
  store i32* null, i32** @__OldStack, align 8
  %69 = load i32*, i32** %2, align 8
  store i32* %69, i32** @__CallbackStack, align 8
  %70 = load i32, i32* @IRQ_DSP_AI, align 4
  %71 = load i32, i32* @__AIDHandler, align 4
  %72 = call i32 @IRQ_Request(i32 %70, i32 %71, i32* null)
  %73 = load i32, i32* @IRQ_DSP_AI, align 4
  %74 = call i32 @IRQMASK(i32 %73)
  %75 = call i32 @__UnmaskIrq(i32 %74)
  store i32 1, i32* @__AIInitFlag, align 4
  br label %76

76:                                               ; preds = %68, %1
  ret void
}

declare dso_local i8* @nanosecs_to_ticks(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__AISRCINIT(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @IRQ_Request(i32, i32, i32*) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
