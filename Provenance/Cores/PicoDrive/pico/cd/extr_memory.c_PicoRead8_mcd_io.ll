; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoRead8_mcd_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoRead8_mcd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EL_CDREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"m68k_regs r8:  [%02x]   %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRead8_mcd_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65280
  %7 = icmp eq i32 %6, 8192
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @m68k_reg_read16(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @EL_CDREGS, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 63
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SekPc, align 4
  %25 = call i32 @elprintf(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PicoRead8_io(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @m68k_reg_read16(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PicoRead8_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
