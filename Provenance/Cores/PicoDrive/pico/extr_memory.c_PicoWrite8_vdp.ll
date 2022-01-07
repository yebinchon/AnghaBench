; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_vdp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_vdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@EL_UIO = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"68k bad write [%06x] %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWrite8_vdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite8_vdp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 249
  %7 = icmp eq i32 %6, 17
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @PicoOpt, align 4
  %10 = load i32, i32* @POPT_EN_PSG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SN76496Write(i32 %14)
  br label %16

16:                                               ; preds = %13, %8
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 224
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = call i32 @PicoVideoWrite(i32 %24, i32 %28)
  br label %39

30:                                               ; preds = %17
  %31 = load i32, i32* @EL_UIO, align 4
  %32 = load i32, i32* @EL_ANOMALY, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 255
  %37 = load i32, i32* @SekPc, align 4
  %38 = call i32 @elprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %21, %16
  ret void
}

declare dso_local i32 @SN76496Write(i32) #1

declare dso_local i32 @PicoVideoWrite(i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
