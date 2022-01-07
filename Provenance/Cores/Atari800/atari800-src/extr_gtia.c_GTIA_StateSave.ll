; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_gtia.c_GTIA_StateSave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_gtia.c_GTIA_StateSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTIA_HPOSP0 = common dso_local global i32 0, align 4
@GTIA_HPOSP1 = common dso_local global i32 0, align 4
@GTIA_HPOSP2 = common dso_local global i32 0, align 4
@GTIA_HPOSP3 = common dso_local global i32 0, align 4
@GTIA_HPOSM0 = common dso_local global i32 0, align 4
@GTIA_HPOSM1 = common dso_local global i32 0, align 4
@GTIA_HPOSM2 = common dso_local global i32 0, align 4
@GTIA_HPOSM3 = common dso_local global i32 0, align 4
@PF0PM = common dso_local global i32 0, align 4
@PF1PM = common dso_local global i32 0, align 4
@PF2PM = common dso_local global i32 0, align 4
@PF3PM = common dso_local global i32 0, align 4
@GTIA_M0PL = common dso_local global i32 0, align 4
@GTIA_M1PL = common dso_local global i32 0, align 4
@GTIA_M2PL = common dso_local global i32 0, align 4
@GTIA_M3PL = common dso_local global i32 0, align 4
@GTIA_P0PL = common dso_local global i32 0, align 4
@GTIA_P1PL = common dso_local global i32 0, align 4
@GTIA_P2PL = common dso_local global i32 0, align 4
@GTIA_P3PL = common dso_local global i32 0, align 4
@GTIA_SIZEP0 = common dso_local global i32 0, align 4
@GTIA_SIZEP1 = common dso_local global i32 0, align 4
@GTIA_SIZEP2 = common dso_local global i32 0, align 4
@GTIA_SIZEP3 = common dso_local global i32 0, align 4
@GTIA_SIZEM = common dso_local global i32 0, align 4
@GTIA_GRAFP0 = common dso_local global i32 0, align 4
@GTIA_GRAFP1 = common dso_local global i32 0, align 4
@GTIA_GRAFP2 = common dso_local global i32 0, align 4
@GTIA_GRAFP3 = common dso_local global i32 0, align 4
@GTIA_GRAFM = common dso_local global i32 0, align 4
@GTIA_COLPM0 = common dso_local global i32 0, align 4
@GTIA_COLPM1 = common dso_local global i32 0, align 4
@GTIA_COLPM2 = common dso_local global i32 0, align 4
@GTIA_COLPM3 = common dso_local global i32 0, align 4
@GTIA_COLPF0 = common dso_local global i32 0, align 4
@GTIA_COLPF1 = common dso_local global i32 0, align 4
@GTIA_COLPF2 = common dso_local global i32 0, align 4
@GTIA_COLPF3 = common dso_local global i32 0, align 4
@GTIA_COLBK = common dso_local global i32 0, align 4
@GTIA_PRIOR = common dso_local global i32 0, align 4
@GTIA_VDELAY = common dso_local global i32 0, align 4
@GTIA_GRACTL = common dso_local global i32 0, align 4
@consol_mask = common dso_local global i32 0, align 4
@GTIA_speaker = common dso_local global i32 0, align 4
@GTIA_TRIG_latch = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GTIA_StateSave() #0 {
  %1 = alloca i32, align 4
  store i32 7, i32* %1, align 4
  %2 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSP0, i32 1)
  %3 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSP1, i32 1)
  %4 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSP2, i32 1)
  %5 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSP3, i32 1)
  %6 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSM0, i32 1)
  %7 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSM1, i32 1)
  %8 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSM2, i32 1)
  %9 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_HPOSM3, i32 1)
  %10 = call i32 @StateSav_SaveUBYTE(i32* @PF0PM, i32 1)
  %11 = call i32 @StateSav_SaveUBYTE(i32* @PF1PM, i32 1)
  %12 = call i32 @StateSav_SaveUBYTE(i32* @PF2PM, i32 1)
  %13 = call i32 @StateSav_SaveUBYTE(i32* @PF3PM, i32 1)
  %14 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_M0PL, i32 1)
  %15 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_M1PL, i32 1)
  %16 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_M2PL, i32 1)
  %17 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_M3PL, i32 1)
  %18 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_P0PL, i32 1)
  %19 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_P1PL, i32 1)
  %20 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_P2PL, i32 1)
  %21 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_P3PL, i32 1)
  %22 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_SIZEP0, i32 1)
  %23 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_SIZEP1, i32 1)
  %24 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_SIZEP2, i32 1)
  %25 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_SIZEP3, i32 1)
  %26 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_SIZEM, i32 1)
  %27 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRAFP0, i32 1)
  %28 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRAFP1, i32 1)
  %29 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRAFP2, i32 1)
  %30 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRAFP3, i32 1)
  %31 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRAFM, i32 1)
  %32 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPM0, i32 1)
  %33 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPM1, i32 1)
  %34 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPM2, i32 1)
  %35 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPM3, i32 1)
  %36 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPF0, i32 1)
  %37 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPF1, i32 1)
  %38 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPF2, i32 1)
  %39 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLPF3, i32 1)
  %40 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_COLBK, i32 1)
  %41 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_PRIOR, i32 1)
  %42 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_VDELAY, i32 1)
  %43 = call i32 @StateSav_SaveUBYTE(i32* @GTIA_GRACTL, i32 1)
  %44 = call i32 @StateSav_SaveUBYTE(i32* @consol_mask, i32 1)
  %45 = call i32 @StateSav_SaveINT(i32* @GTIA_speaker, i32 1)
  %46 = call i32 @StateSav_SaveINT(i32* %1, i32 1)
  %47 = load i32*, i32** @GTIA_TRIG_latch, align 8
  %48 = call i32 @StateSav_SaveUBYTE(i32* %47, i32 4)
  ret void
}

declare dso_local i32 @StateSav_SaveUBYTE(i32*, i32) #1

declare dso_local i32 @StateSav_SaveINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
