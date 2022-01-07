; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead16_sram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoRead16_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SRR_MAPPED = common dso_local global i32 0, align 4
@SRF_EEPROM = common dso_local global i32 0, align 4
@EL_SRAMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sram r16 [%06x] %04x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @PicoRead16_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PicoRead16_sram(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 2, i32 0), align 8
  %15 = load i32, i32* @SRR_MAPPED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %20 = load i32, i32* @SRF_EEPROM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i64 (...) @EEPROM_read()
  store i64 %24, i64* %4, align 8
  br label %43

25:                                               ; preds = %18
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 3), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %3, align 8
  %30 = add nsw i64 %28, %29
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %25, %23
  %44 = load i32, i32* @EL_SRAMIO, align 4
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @SekPc, align 4
  %48 = call i32 @elprintf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46, i32 %47)
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %63

50:                                               ; preds = %13, %9, %1
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0), align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1), align 8
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %55, %56
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %2, align 8
  br label %63

60:                                               ; preds = %50
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @m68k_unmapped_read16(i64 %61)
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %60, %54, %43
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i64 @EEPROM_read(...) #1

declare dso_local i32 @elprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @m68k_unmapped_read16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
