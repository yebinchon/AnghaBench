; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_vdp_ctrl.c_vdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdp_pal = common dso_local global i64 0, align 8
@lines_per_frame = common dso_local global i32 0, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@m68k_set_irq = common dso_local global i8* null, align 8
@set_irq_line = common dso_local global i8* null, align 8
@m68k_set_irq_delay = common dso_local global i8* null, align 8
@set_irq_line_delay = common dso_local global i8* null, align 8
@z80_set_irq_line = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_init() #0 {
  %1 = load i64, i64* @vdp_pal, align 8
  %2 = icmp ne i64 %1, 0
  %3 = zext i1 %2 to i64
  %4 = select i1 %2, i32 313, i32 262
  store i32 %4, i32* @lines_per_frame, align 4
  %5 = load i32, i32* @system_hw, align 4
  %6 = load i32, i32* @SYSTEM_PBC, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @SYSTEM_MD, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** @m68k_set_irq, align 8
  store i8* %11, i8** @set_irq_line, align 8
  %12 = load i8*, i8** @m68k_set_irq_delay, align 8
  store i8* %12, i8** @set_irq_line_delay, align 8
  br label %16

13:                                               ; preds = %0
  %14 = load i8*, i8** @z80_set_irq_line, align 8
  store i8* %14, i8** @set_irq_line, align 8
  %15 = load i8*, i8** @z80_set_irq_line, align 8
  store i8* %15, i8** @set_irq_line_delay, align 8
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
