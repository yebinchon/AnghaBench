; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_GTIA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_GTIA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"HPOSP0=%02X    HPOSP1=%02X    HPOSP2=%02X    HPOSP3=%02X\0A\00", align 1
@GTIA_HPOSP0 = common dso_local global i32 0, align 4
@GTIA_HPOSP1 = common dso_local global i32 0, align 4
@GTIA_HPOSP2 = common dso_local global i32 0, align 4
@GTIA_HPOSP3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"HPOSM0=%02X    HPOSM1=%02X    HPOSM2=%02X    HPOSM3=%02X\0A\00", align 1
@GTIA_HPOSM0 = common dso_local global i32 0, align 4
@GTIA_HPOSM1 = common dso_local global i32 0, align 4
@GTIA_HPOSM2 = common dso_local global i32 0, align 4
@GTIA_HPOSM3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"SIZEP0=%02X    SIZEP1=%02X    SIZEP2=%02X    SIZEP3=%02X    SIZEM= %02X\0A\00", align 1
@GTIA_SIZEP0 = common dso_local global i32 0, align 4
@GTIA_SIZEP1 = common dso_local global i32 0, align 4
@GTIA_SIZEP2 = common dso_local global i32 0, align 4
@GTIA_SIZEP3 = common dso_local global i32 0, align 4
@GTIA_SIZEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"GRAFP0=%02X    GRAFP1=%02X    GRAFP2=%02X    GRAFP3=%02X    GRAFM= %02X\0A\00", align 1
@GTIA_GRAFP0 = common dso_local global i32 0, align 4
@GTIA_GRAFP1 = common dso_local global i32 0, align 4
@GTIA_GRAFP2 = common dso_local global i32 0, align 4
@GTIA_GRAFP3 = common dso_local global i32 0, align 4
@GTIA_GRAFM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"COLPM0=%02X    COLPM1=%02X    COLPM2=%02X    COLPM3=%02X\0A\00", align 1
@GTIA_COLPM0 = common dso_local global i32 0, align 4
@GTIA_COLPM1 = common dso_local global i32 0, align 4
@GTIA_COLPM2 = common dso_local global i32 0, align 4
@GTIA_COLPM3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"COLPF0=%02X    COLPF1=%02X    COLPF2=%02X    COLPF3=%02X    COLBK= %02X\0A\00", align 1
@GTIA_COLPF0 = common dso_local global i32 0, align 4
@GTIA_COLPF1 = common dso_local global i32 0, align 4
@GTIA_COLPF2 = common dso_local global i32 0, align 4
@GTIA_COLPF3 = common dso_local global i32 0, align 4
@GTIA_COLBK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"PRIOR= %02X    VDELAY=%02X    GRACTL=%02X\0A\00", align 1
@GTIA_PRIOR = common dso_local global i32 0, align 4
@GTIA_VDELAY = common dso_local global i32 0, align 4
@GTIA_GRACTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_GTIA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_GTIA() #0 {
  %1 = load i32, i32* @GTIA_HPOSP0, align 4
  %2 = load i32, i32* @GTIA_HPOSP1, align 4
  %3 = load i32, i32* @GTIA_HPOSP2, align 4
  %4 = load i32, i32* @GTIA_HPOSP3, align 4
  %5 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @GTIA_HPOSM0, align 4
  %7 = load i32, i32* @GTIA_HPOSM1, align 4
  %8 = load i32, i32* @GTIA_HPOSM2, align 4
  %9 = load i32, i32* @GTIA_HPOSM3, align 4
  %10 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @GTIA_SIZEP0, align 4
  %12 = load i32, i32* @GTIA_SIZEP1, align 4
  %13 = load i32, i32* @GTIA_SIZEP2, align 4
  %14 = load i32, i32* @GTIA_SIZEP3, align 4
  %15 = load i32, i32* @GTIA_SIZEM, align 4
  %16 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @GTIA_GRAFP0, align 4
  %18 = load i32, i32* @GTIA_GRAFP1, align 4
  %19 = load i32, i32* @GTIA_GRAFP2, align 4
  %20 = load i32, i32* @GTIA_GRAFP3, align 4
  %21 = load i32, i32* @GTIA_GRAFM, align 4
  %22 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @GTIA_COLPM0, align 4
  %24 = load i32, i32* @GTIA_COLPM1, align 4
  %25 = load i32, i32* @GTIA_COLPM2, align 4
  %26 = load i32, i32* @GTIA_COLPM3, align 4
  %27 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @GTIA_COLPF0, align 4
  %29 = load i32, i32* @GTIA_COLPF1, align 4
  %30 = load i32, i32* @GTIA_COLPF2, align 4
  %31 = load i32, i32* @GTIA_COLPF3, align 4
  %32 = load i32, i32* @GTIA_COLBK, align 4
  %33 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @GTIA_PRIOR, align 4
  %35 = load i32, i32* @GTIA_VDELAY, align 4
  %36 = load i32, i32* @GTIA_GRACTL, align 4
  %37 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
