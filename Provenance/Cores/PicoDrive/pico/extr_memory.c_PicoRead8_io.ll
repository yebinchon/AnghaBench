; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EL_BUSREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get_zrun: %02x [%i] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_32X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRead8_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 65504
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @io_ports_read(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %55

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 2), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 2), align 4
  store i32 %11, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 6
  %15 = load i32, i32* %3, align 4
  %16 = xor i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 64512
  %19 = icmp eq i32 %18, 4096
  br i1 %19, label %20, label %44

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, -2
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, 65281
  %30 = icmp eq i32 %29, 4352
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %34 = or i32 %32, %33
  %35 = and i32 %34, 1
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @EL_BUSREQ, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (...) @SekCyclesDone()
  %41 = load i32, i32* @SekPc, align 4
  %42 = call i32 @elprintf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31, %27
  br label %55

44:                                               ; preds = %10
  %45 = load i32, i32* @PicoOpt, align 4
  %46 = load i32, i32* @POPT_EN_32X, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @PicoRead8_32x(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @m68k_unmapped_read8(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %49, %43, %7
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @io_ports_read(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @PicoRead8_32x(i32) #1

declare dso_local i32 @m68k_unmapped_read8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
