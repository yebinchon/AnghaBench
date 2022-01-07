; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_Reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_PAD_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_pendingbits = common dso_local global i32 0, align 4
@__pad_waitingbits = common dso_local global i32 0, align 4
@__pad_checkingbits = common dso_local global i32 0, align 4
@__pad_resettingbits = common dso_local global i32 0, align 4
@__pad_enabledbits = common dso_local global i32 0, align 4
@__pad_spec = common dso_local global i32 0, align 4
@__pad_recalibratebits = common dso_local global i32 0, align 4
@__pad_resettingchan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PAD_Reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @_CPU_ISR_Disable(i32 %6)
  %8 = load i32, i32* @__pad_pendingbits, align 4
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* @__pad_pendingbits, align 4
  %11 = load i32, i32* @__pad_waitingbits, align 4
  %12 = load i32, i32* @__pad_checkingbits, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @__pad_resettingbits, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @__pad_resettingbits, align 4
  %20 = load i32, i32* @__pad_resettingbits, align 4
  %21 = load i32, i32* @__pad_enabledbits, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @__pad_enabledbits, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @__pad_enabledbits, align 4
  %27 = load i32, i32* @__pad_spec, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @__pad_recalibratebits, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @__pad_recalibratebits, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SI_DisablePolling(i32 %34)
  %36 = load i32, i32* @__pad_resettingchan, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @__pad_doreset()
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @_CPU_ISR_Restore(i32 %41)
  ret i32 1
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @SI_DisablePolling(i32) #1

declare dso_local i32 @__pad_doreset(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
