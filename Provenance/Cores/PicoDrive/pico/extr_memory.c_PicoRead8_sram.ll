; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_sram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead8_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SRR_MAPPED = common dso_local global i32 0, align 4
@SRF_EEPROM = common dso_local global i32 0, align 4
@EL_SRAMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sram r8  [%06x]   %02x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoRead8_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoRead8_sram(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2, i32 0), align 8
  %14 = load i32, i32* @SRR_MAPPED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 4
  %19 = load i32, i32* @SRF_EEPROM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = call i32 (...) @EEPROM_read()
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %40

31:                                               ; preds = %17
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 3), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %30
  %41 = load i32, i32* @EL_SRAMIO, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SekPc, align 4
  %45 = call i32 @elprintf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %12, %8, %1
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0), align 8
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1), align 8
  %53 = load i32, i32* %3, align 4
  %54 = xor i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @m68k_unmapped_read8(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %51, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @EEPROM_read(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @m68k_unmapped_read8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
