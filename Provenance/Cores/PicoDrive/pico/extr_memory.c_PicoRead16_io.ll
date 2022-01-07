; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead16_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead16_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EL_BUSREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get_zrun: %04x [%i] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_32X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRead16_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 65504
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @io_ports_read(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 8
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %16 = add nsw i32 %15, 65
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 5
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 8
  %21 = xor i32 %18, %20
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 64512
  %26 = icmp eq i32 %25, 4096
  br i1 %26, label %27, label %47

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -257
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 65280
  %32 = icmp eq i32 %31, 4352
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 2), align 4
  %36 = or i32 %34, %35
  %37 = and i32 %36, 1
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @EL_BUSREQ, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (...) @SekCyclesDone()
  %44 = load i32, i32* @SekPc, align 4
  %45 = call i32 @elprintf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %33, %27
  br label %58

47:                                               ; preds = %14
  %48 = load i32, i32* @PicoOpt, align 4
  %49 = load i32, i32* @POPT_EN_32X, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @PicoRead16_32x(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @m68k_unmapped_read16(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52, %46, %7
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @io_ports_read(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @PicoRead16_32x(i32) #1

declare dso_local i32 @m68k_unmapped_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
