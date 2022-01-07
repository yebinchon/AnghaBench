; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k16_bram.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoWriteS68k16_bram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"s68k_bram w16: [%06x] %04x @%06x\00", align 1
@SekPcS68k = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@SRam = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWriteS68k16_bram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWriteS68k16_bram(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @EL_ANOMALY, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SekPcS68k, align 4
  %9 = call i32 @elprintf(i32 %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 1
  %12 = and i32 %11, 8191
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %13, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @SRam, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
