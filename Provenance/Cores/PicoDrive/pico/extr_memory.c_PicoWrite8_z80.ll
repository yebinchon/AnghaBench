; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_z80.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_PicoWrite8_z80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"68k z80 write with no bus or reset! [%06x] %02x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_FM = common dso_local global i32 0, align 4
@emustatus = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@EL_Z80BNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"z80 bank=%06x\00", align 1
@EL_UIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"68k bad write [%06x] %02x @ %06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWrite8_z80 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite8_z80(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 2), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @EL_ANOMALY, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = load i32, i32* @SekPc, align 4
  %17 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %16)
  br label %89

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 16384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = call i32 @SekCyclesBurnRun(i32 2)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 8191
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64 %25, i64* %30, align 8
  br label %89

31:                                               ; preds = %18
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 24576
  %34 = icmp eq i32 %33, 16384
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* @PicoOpt, align 4
  %37 = load i32, i32* @POPT_EN_FM, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 3
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  %45 = call i32 @ym2612_write_local(i32 %42, i32 %44, i32 0)
  %46 = and i32 %45, 1
  %47 = load i32, i32* @emustatus, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @emustatus, align 4
  br label %49

49:                                               ; preds = %40, %35
  br label %89

50:                                               ; preds = %31
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 32761
  %53 = icmp eq i32 %52, 32529
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* @PicoOpt, align 4
  %56 = load i32, i32* @POPT_EN_PSG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SN76496Write(i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  br label %89

63:                                               ; preds = %50
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 32512
  %66 = icmp eq i32 %65, 24576
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %70 = load i32, i32* %4, align 4
  %71 = shl i32 %70, 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %75 = and i32 %74, 511
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %76 = load i32, i32* @EL_Z80BNK, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 4
  %78 = shl i32 %77, 15
  %79 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %89

80:                                               ; preds = %63
  %81 = load i32, i32* @EL_UIO, align 4
  %82 = load i32, i32* @EL_ANOMALY, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 255
  %87 = load i32, i32* @SekPc, align 4
  %88 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %67, %62, %49, %22, %11
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @SekCyclesBurnRun(i32) #1

declare dso_local i32 @ym2612_write_local(i32, i32, i32) #1

declare dso_local i32 @SN76496Write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
