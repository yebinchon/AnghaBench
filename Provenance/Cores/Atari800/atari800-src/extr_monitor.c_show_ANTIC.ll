; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_ANTIC.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_ANTIC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [88 x i8] c"DMACTL=%02X    CHACTL=%02X    DLISTL=%02X    DLISTH=%02X    HSCROL=%02X    VSCROL=%02X\0A\00", align 1
@ANTIC_DMACTL = common dso_local global i32 0, align 4
@ANTIC_CHACTL = common dso_local global i32 0, align 4
@ANTIC_dlist = common dso_local global i32 0, align 4
@ANTIC_HSCROL = common dso_local global i32 0, align 4
@ANTIC_VSCROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"PMBASE=%02X    CHBASE=%02X    VCOUNT=%02X    NMIEN= %02X    ypos=%4d\0A\00", align 1
@ANTIC_PMBASE = common dso_local global i32 0, align 4
@ANTIC_CHBASE = common dso_local global i32 0, align 4
@ANTIC_OFFSET_VCOUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ANTIC_NMIEN = common dso_local global i32 0, align 4
@ANTIC_ypos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_ANTIC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ANTIC() #0 {
  %1 = load i32, i32* @ANTIC_DMACTL, align 4
  %2 = load i32, i32* @ANTIC_CHACTL, align 4
  %3 = load i32, i32* @ANTIC_dlist, align 4
  %4 = and i32 %3, 255
  %5 = load i32, i32* @ANTIC_dlist, align 4
  %6 = ashr i32 %5, 8
  %7 = load i32, i32* @ANTIC_HSCROL, align 4
  %8 = load i32, i32* @ANTIC_VSCROL, align 4
  %9 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %4, i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @ANTIC_PMBASE, align 4
  %11 = load i32, i32* @ANTIC_CHBASE, align 4
  %12 = load i32, i32* @ANTIC_OFFSET_VCOUNT, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @ANTIC_GetByte(i32 %12, i32 %13)
  %15 = load i32, i32* @ANTIC_NMIEN, align 4
  %16 = load i32, i32* @ANTIC_ypos, align 4
  %17 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11, i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ANTIC_GetByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
