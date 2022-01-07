; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_sram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SRam = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SRR_MAPPED = common dso_local global i32 0, align 4
@EL_SRAMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sram w8  [%06x]   %02x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@SRF_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @PicoWrite8_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite8_sram(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 0), align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 4
  %15 = load i32, i32* @SRR_MAPPED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %9, %2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @m68k_unmapped_write8(i64 %19, i64 %20)
  br label %52

22:                                               ; preds = %13
  %23 = load i32, i32* @EL_SRAMIO, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 255
  %27 = load i32, i32* @SekPc, align 4
  %28 = call i32 @elprintf(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 2), align 8
  %30 = load i32, i32* @SRF_EEPROM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @EEPROM_write8(i64 %34, i64 %35)
  br label %52

37:                                               ; preds = %22
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 3), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 1), align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %5, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @SRam, i32 0, i32 4), align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %18, %51, %33
  ret void
}

declare dso_local i32 @m68k_unmapped_write8(i64, i64) #1

declare dso_local i32 @elprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @EEPROM_write8(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
